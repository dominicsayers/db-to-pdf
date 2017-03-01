class Player < ApplicationRecord
  before_save do
    self.match_name = full_name.parameterize
  end

  scope :current, -> { where(current: true) }

  def self.default_scope
    order :full_name
  end
end
