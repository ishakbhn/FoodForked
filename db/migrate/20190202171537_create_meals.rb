class CreateMeals < ActiveRecord::Migration[5.2]
  def change
    create_table :meals do |t|
      t.datetime :date

      t.timestamps
    end
  end
end
