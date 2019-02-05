class CreatePlans < ActiveRecord::Migration[5.2]
  def change
    create_table :plans do |t|
      t.datetime :date
      t.references :food, foreign_key: true
      t.references :breakfast, foreign_key: { to_table: :foods }
      t.references :lunch, foreign_key: { to_table: :foods }
      t.references :dinner, foreign_key: { to_table: :foods }

      t.timestamps
    end
  end
end
