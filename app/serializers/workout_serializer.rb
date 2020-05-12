class WorkoutSerializer < ActiveModel::Serializer
  attributes :id, :title, :reps, :sets, :time, :category, :body, :difficulty, :image, :instructions

  has_many :comments
end
