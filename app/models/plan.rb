class Plan < ApplicationRecord
  belongs_to :meal
  belongs_to :breakfast
  belongs_to :lunch
  belongs_to :dinner
end
