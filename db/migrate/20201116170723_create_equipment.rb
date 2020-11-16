class CreateEquipment < ActiveRecord::Migration[6.0]
  def change
    create_table :equipment do |t|
      t.string :category
      t.string :size
      t.string :location
      t.text :description
      t.string :price
      t.text :rules

      t.timestamps
    end
  end
end
