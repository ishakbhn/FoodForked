class Plan < ApplicationRecord
  # correct syntax
  belongs_to :food
  belongs_to :user
end