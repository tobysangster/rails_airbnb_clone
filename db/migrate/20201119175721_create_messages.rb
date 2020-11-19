class CreateMessages < ActiveRecord::Migration[6.0]
  def change
    create_table :messages do |t|
      t.string :new
      t.string :create
      t.string :show

      t.timestamps
    end
  end
end
