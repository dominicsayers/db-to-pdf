require 'google/apis/sheets_v4'
require 'googleauth'
require 'googleauth/stores/file_token_store'

class GoogleAPI
  def response
    service.get_spreadsheet_values @spreadsheet_id, RANGE
  end

  private

  OOB_URI = 'urn:ietf:wg:oauth:2.0:oob'
  APPLICATION_NAME = 'Google Sheets API Ruby Quickstart'
  CREDENTIALS_PATH = File.join(Dir.home, '.credentials', "#{ENV['GOOGLE_DOCS_PROJECT_ID']}.yaml")
  SCOPE = Google::Apis::SheetsV4::AUTH_SPREADSHEETS_READONLY
  USER_ID = 'default'
  RANGE = 'A2:AH'

  def initialize(spreadsheet_id)
    @spreadsheet_id = spreadsheet_id
  end

  def client_id_hash
    YAML.safe_load(
      ERB.new(
        File.read(File.join(Rails.root, 'config', 'google_docs.yml'))
      ).result
    )
  end

  def client_id
    Google::Auth::ClientId.from_hash(client_id_hash)
  end

  def authorize
    FileUtils.mkdir_p(File.dirname(CREDENTIALS_PATH))
    credentials
  end

  def token_store
    Google::Auth::Stores::FileTokenStore.new(file: CREDENTIALS_PATH)
  end

  def authorizer
    Google::Auth::UserAuthorizer.new client_id, SCOPE, token_store
  end

  def credentials
    authorizer.get_credentials(USER_ID) || new_credentials
  end

  def new_credentials
    puts 'Open the following URL in the browser and enter the resulting code after authorization'
    puts authorizer.get_authorization_url base_url: OOB_URI
    authorizer.get_and_store_credentials_from_code user_id: USER_ID, code: gets, base_url: OOB_URI
  end

  def service
    s = Google::Apis::SheetsV4::SheetsService.new
    s.client_options.application_name = APPLICATION_NAME
    s.authorization = authorize
    s
  end
end
