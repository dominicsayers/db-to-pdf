class AddCurrentToPlayer < ActiveRecord::Migration[5.0]
  def change
    add_column :players, :current, :boolean
  end
end
