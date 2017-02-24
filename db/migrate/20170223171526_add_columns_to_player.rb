class AddColumnsToPlayer < ActiveRecord::Migration[5.0]
  def change
    add_column :players, :allergy_note, :text
    add_column :players, :medication_note, :text
  end
end
