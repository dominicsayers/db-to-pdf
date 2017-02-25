class Player < ApplicationRecord
  def self.default_scope
    order :full_name
  end
end
