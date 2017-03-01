class AddMatchNameToPlayer < ActiveRecord::Migration[5.0]
  def up
    add_column :players, :match_name, :string
    add_index :players, :match_name, unique: true

    Player.all.each do |player|
      player.touch
      player.save
    end
  end

  def down
    remove_column :players, :match_name
  end
end
