class Api::V1::CommentsController < ApplicationController
  protect_from_forgery unless: -> { request.format.json? }

  def index
    workout = Workout.find(params[:workout_id])
    render json: workout.comments
  end

  def create
    workout = Workout.find(params[:workout_id])
    user = current_user

    comment = Comment.new(comment_params)
    comment.workout = workout
    comment.user = user

    if comment.save
      render json: comment
    else
      render json: { error: comment.errors.full_messages }, status: :unprocessable_entity
    end
  end

  private
  def comment_params
    params.require(:comment).permit(:content)
  end
end
