require "rails_helper"

RSpec.describe Api::V1::WorkoutsController, type: :controller do
  describe "GET#index" do
    let!(:workout_one) { Workout.create(name: "push-ups", body_part: "chest", workout_type: "body weight", reps: 10, sets: 5, workout_time: "15 minutes", instructions: "1. Get down on all fours, 2. placing your hands slightly wider than your shoulders. 3. Straighten your arms and legs. 4. Lower your body until your chest nearly touches the floor. 5. Pause, then push yourself back up. 6. Repeat.", difficulty_level: 1, image_url: "https://cimg3.ibsrv.net/cimg/www.fitday.com/693x350_85-1/503/26girlpush-108503.jpg") }
    let!(:workout_two) { Workout.create(name: "crunches", body_part: "abdominal", workout_type: "body weight", reps: 10, sets: 5, workout_time: "15 minutes", instructions: "1. Lie down on your back.
    2. Bend your legs and stabilize your lower body.
    3. Cross your hands to opposite shoulders, or place them behind your ears without pulling on your neck.
    4. Lift your head and shoulder blades from the ground. Exhale as you rise.
    5. Lower, returning to your starting point. Inhale as you lower.", difficulty_level: 2, image_url: "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/news/featured_images/crunch-628x363-1445437801.JPG?resize=980:*") }

    it "returns a successful response status and a content type of JSON" do
      get :index

      expect(response.status).to eq 200
      expect(response.content_type).to eq "application/json"
    end

    it "returns a list of all workouts in the database" do
      get :index

      response_body = JSON.parse(response.body)
      binding.pry
      expect(response_body.length).to eq 2

      expect(response_body[0]["name"]).to eq workout_one.name
      expect(response_body[0]["body_part"]).to eq workout_one.body_part
      expect(response_body[0]["workout_type"]).to eq workout_one.workout_type
      expect(response_body[0]["reps"]).to eq workout_one.reps
      expect(response_body[0]["sets"]).to eq workout_one.sets
      expect(response_body[0]["workout_time"]).to eq workout_one.workout_time
      expect(response_body[0]["instructions"]).to eq workout_one.instructions
      expect(response_body[0]["difficulty_level"]).to eq workout_one.difficulty_level
      expect(response_body[0]["image_url"]).to eq workout_one.image_url

      expect(response_body[1]["name"]).to eq workout_two.name
      expect(response_body[1]["body_part"]).to eq workout_two.body_part
      expect(response_body[1]["workout_type"]).to eq workout_two.workout_type
      expect(response_body[1]["reps"]).to eq workout_two.reps
      expect(response_body[1]["sets"]).to eq workout_two.sets
      expect(response_body[1]["workout_time"]).to eq workout_two.workout_time
      expect(response_body[1]["instructions"]).to eq workout_two.instructions
      expect(response_body[1]["difficulty_level"]).to eq workout_two.difficulty_level
      expect(response_body[1]["image_url"]).to eq workout_two.image_url
    end
  end
end
