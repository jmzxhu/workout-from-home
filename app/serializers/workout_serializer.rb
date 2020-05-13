class WorkoutSerializer < ActiveModel::Serializer
  attributes :id, :title, :reps, :sets, :time, :category, :body, :difficulty, :image, :instructions, :scope

  has_many :comments
end
