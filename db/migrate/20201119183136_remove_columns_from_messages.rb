class RemoveColumnsFromMessages < ActiveRecord::Migration[6.0]
  def change
    remove_column :messages, :new
    remove_column :messages, :create
    remove_column :messages, :show
  end
end
