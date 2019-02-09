class CreatePlans < ActiveRecord::Migration[5.2]
  def change
    create_table :plans do |t|
      t.date :date
      t.references :food
      t.references :user, index: true, foreign_key: true
      t.integer :lunch_id
      t.integer :dinner_id

      t.timestamps
    end
  end
end