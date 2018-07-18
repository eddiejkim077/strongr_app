class Exercise < ApplicationRecord
  belongs_to :user
  belongs_to :plan 

  BODY_PARTS = ['Arms', 'Shoulders', 'Legs', 'Back', 'Chest']
end
