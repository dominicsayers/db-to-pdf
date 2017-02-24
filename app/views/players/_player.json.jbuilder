json.extract! player, :id, :full_name, :date_of_birth, :allergic, :medication, :photo_gumshield, :photo_no_gumshield, :created_at, :updated_at
json.url player_url(player, format: :json)
