class AddMoreColumnsToPlayer < ActiveRecord::Migration[5.0]
  def change
    add_column :players, :tetanus, :string
    add_column :players, :school, :string
    add_column :players, :gp_name, :string
    add_column :players, :gp_address, :string
    add_column :players, :pog1_name, :string
    add_column :players, :pog1_address, :string
    add_column :players, :pog1_phone1, :string
    add_column :players, :pog1_phone2, :string
    add_column :players, :pog2_name, :string
    add_column :players, :pog2_address, :string
    add_column :players, :pog2_phone1, :string
    add_column :players, :pog2_phone2, :string
    add_column :players, :ec_name, :string
    add_column :players, :ec_phone1, :string
    add_column :players, :ec_phone2, :string
  end
end
