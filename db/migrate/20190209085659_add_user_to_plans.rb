class AddUserToPlans < ActiveRecord::Migration[5.2]
  def change
    add_reference :plans, foreign_key: true
  end
end
