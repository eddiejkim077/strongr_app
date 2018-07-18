class Plan < ApplicationRecord
  belongs_to :user
  has_many :exercises, dependent: :destroy
end
