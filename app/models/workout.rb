class Workout < ApplicationRecord
   validates :title, presence: true
   validates :reps, presence: true, numericality: { only_integer: true }
   validates :sets, presence: true, numericality: { only_integer: true }
   validates :time, presence: true
   validates :category, presence: true
   validates :body, presence: true
   validates :difficulty, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 1, less_than_or_equal_to: 3 }
   validates :image, presence: true
   validates :instructions, presence: true

   has_many :comments
end
