class Plan < ApplicationRecord
  belongs_to :user
  has_many :exercises
end
