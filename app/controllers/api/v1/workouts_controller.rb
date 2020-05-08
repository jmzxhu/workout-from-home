class Api::V1::WorkoutsController < ApplicationController

  protect_from_forgery unless: -> { request.format.json? }

  def index
    render json: Workout.all
  end
end
