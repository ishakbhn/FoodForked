class Plan < ApplicationRecord
<<<<<<< HEAD
  has_and_belongs_to_many :meal
  has_and_belongs_to_many :breakfast
  has_and_belongs_to_many :lunch
  has_and_belongs_to_many :dinner
=======
  belongs_to :meal
  belongs_to :food
  belongs_to :food
  belongs_to :food
>>>>>>> master
end
