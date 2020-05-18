class Api::V1::WorkoutsController < ApplicationController
  protect_from_forgery with: :null_session
  protect_from_forgery unless: -> { request.format.json? }

  def index
    key = ENV["OPEN_WEATHER_API_KEY"]

    zip = current_user.zip_code

    url = "http://api.openweathermap.org/data/2.5/weather?q=#{zip},us&units=imperial&appid=#{key}"
    api_response = Faraday.get(url)

    weather = JSON.parse(api_response.body)
    render json: { workouts: Workout.all, user: current_user, weather: weather }
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
