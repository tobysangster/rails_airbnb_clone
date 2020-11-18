class AddPhotosToEquipmentTable < ActiveRecord::Migration[6.0]
  def change
    add_column :equipment, :photo, :string

  end
end
