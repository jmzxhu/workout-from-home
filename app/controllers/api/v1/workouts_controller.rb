class Api::V1::WorkoutsController < ApplicationController
  protect_from_forgery with: :null_session
  protect_from_forgery unless: -> { request.format.json? }
  # before_action :authorize_user, except: [:index, :show]

  def index
    render json: { workouts: Workout.all, user: current_user }
  end

  def show
    render json: Workout.find(params[:id])
  end

  def create
    workout = Workout.new(workout_params)
    
    if workout.save
      render json: workout
    else
      render json: { error: comment.errors.full_messages }, status: :unprocessable_entity
    end
  end

  protected
  def workout_params
    params.require(:workout).permit(:title, :reps, :sets, :time, :category, :body, :difficulty, :image, :instructions)
  end
end
