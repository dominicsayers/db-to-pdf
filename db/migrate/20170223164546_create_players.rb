class CreatePlayers < ActiveRecord::Migration[5.0]
  def change
    create_table :players do |t|
      t.string :full_name
      t.datetime :date_of_birth
      t.boolean :allergic
      t.boolean :medication
      t.string :photo_gumshield
      t.string :photo_no_gumshield

      t.timestamps
    end
  end
end
