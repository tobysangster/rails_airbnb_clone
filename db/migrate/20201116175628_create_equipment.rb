class CreateEquipment < ActiveRecord::Migration[6.0]
  def change
    create_table :equipment do |t|
      t.string :title
      t.float :price
      t.string :category
      t.text :description
      t.text :rules
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
