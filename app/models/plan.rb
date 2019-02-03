class Plan < ApplicationRecord
  has_and_belongs_to_many :meal
  has_and_belongs_to_many :breakfast
  has_and_belongs_to_many :lunch
  has_and_belongs_to_many :dinner
end
