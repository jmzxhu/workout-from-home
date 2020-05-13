class Api::V1::WorkoutsController < ApplicationController
  protect_from_forgery with: :null_session
  protect_from_forgery unless: -> { request.format.json? }
  before_action :authorize_user, except: [:index, :show]

  def index
    render json: { workouts: Workout.all, user: current_user }
  end

  def show
    render json: Workout.find(params[:id])
  end
end
