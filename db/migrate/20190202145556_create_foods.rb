class CreateFoods < ActiveRecord::Migration[5.2]
  def change
    create_table :foods do |t|
      t.string :name
      t.integer :calories
      t.string :cuisine
      t.integer :price

      t.timestamps
    end
  end
end
