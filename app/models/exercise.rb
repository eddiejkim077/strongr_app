class Exercise < ApplicationRecord
  belongs_to :user
  belongs_to :plan 
  # validates :name :weight :reps :sets :body_part, presence: true

  BODY_PARTS = ['Arms', 'Back', 'Chest', 'Legs', 'Shoulders'] 
end
