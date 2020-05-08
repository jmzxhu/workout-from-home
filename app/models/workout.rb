class Workout < ApplicationRecord
   validates :name, presence: true
   validates :reps, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 1, less_than_or_equal_to: 3 }
   validates :sets, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 1, less_than_or_equal_to: 3 }
   validates :workout_time, presence: true
   validates :workout_type, presence: true
   validates :body_part, presence: true
   validates :difficulty_level, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 1, less_than_or_equal_to: 3 }
   validates :image_url, presence: true
   validates :instructions, presence: true
end
