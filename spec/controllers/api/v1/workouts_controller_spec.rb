require "rails_helper"

RSpec.describe Api::V1::WorkoutsController, category: :controller do
  describe "GET#index" do
    let!(:workout_one) { Workout.create(title: "Push-ups", body: "chest", category: "body weight", reps: 10, sets: 5, time: "15 minutes", instructions: "1. Get down on all fours, 2. placing your hands slightly wider than your shoulders. 3. Straighten your arms and legs. 4. Lower your body until your chest nearly touches the floor. 5. Pause, then push yourself back up. 6. Repeat.", difficulty: 1, image: "https://cimg3.ibsrv.net/cimg/www.fitday.com/693x350_85-1/503/26girlpush-108503.jpg") }
    let!(:workout_two) { Workout.create(title: "crunches", body: "abdominal", category: "body weight", reps: 10, sets: 5, time: "15 minutes", instructions: "1. Lie down on your back.
    2. Bend your legs and stabilize your lower body. 3. Cross your hands to opposite shoulders, or place them behind your ears without pulling on your neck. 4. Lift your head and shoulder blades from the ground. Exhale as you rise. 5. Lower, returning to your starting point. Inhale as you lower.", difficulty: 2, image: "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/news/featured_images/crunch-628x363-1445437801.JPG?resize=980:*") }

    it "returns a successful response status and a content category of JSON" do
      get :index

      expect(response.status).to eq 200
      expect(response.content_type).to eq "application/json"
    end

    it "returns a list of all workouts in the database" do
      get :index

      response_body = JSON.parse(response.body)

      expect(response_body.length).to eq 2

      expect(response_body[0]["title"]).to eq workout_one.title
      expect(response_body[0]["body"]).to eq workout_one.body
      expect(response_body[0]["category"]).to eq workout_one.category
      expect(response_body[0]["reps"]).to eq workout_one.reps
      expect(response_body[0]["sets"]).to eq workout_one.sets
      expect(response_body[0]["time"]).to eq workout_one.time
      expect(response_body[0]["instructions"]).to eq workout_one.instructions
      expect(response_body[0]["difficulty"]).to eq workout_one.difficulty
      expect(response_body[0]["image"]).to eq workout_one.image

      expect(response_body[1]["title"]).to eq workout_two.title
      expect(response_body[1]["body"]).to eq workout_two.body
      expect(response_body[1]["category"]).to eq workout_two.category
      expect(response_body[1]["reps"]).to eq workout_two.reps
      expect(response_body[1]["sets"]).to eq workout_two.sets
      expect(response_body[1]["time"]).to eq workout_two.time
      expect(response_body[1]["instructions"]).to eq workout_two.instructions
      expect(response_body[1]["difficulty"]).to eq workout_two.difficulty
      expect(response_body[1]["image"]).to eq workout_two.image
    end
  end

  describe "GET#show" do
    let!(:workout_one) { Workout.create(title: "Push-ups", body: "chest", category: "body weight", reps: 10, sets: 5, time: "15 minutes", instructions: "1. Get down on all fours, 2. placing your hands slightly wider than your shoulders. 3. Straighten your arms and legs. 4. Lower your body until your chest nearly touches the floor. 5. Pause, then push yourself back up. 6. Repeat.", difficulty: 1, image: "https://cimg3.ibsrv.net/cimg/www.fitday.com/693x350_85-1/503/26girlpush-108503.jpg") }

    it "returns a successful response status and a content category of json" do
      get :show, params: {id: workout_one.id}

      expect(response.status).to eq 200
      expect(response.content_type).to eq "application/json"
    end

    it "returns a workout's information from the data base" do
      get :show, params: {id: workout_one.id}

      response_body = JSON.parse(response.body)

      expect(response_body.length).to equal 12

      expect(response_body["title"]).to eq workout_one.title
      expect(response_body["body"]).to eq workout_one.body
      expect(response_body["category"]).to eq workout_one.category
      expect(response_body["reps"]).to eq workout_one.reps
      expect(response_body["sets"]).to eq workout_one.sets
      expect(response_body["time"]).to eq workout_one.time
      expect(response_body["instructions"]).to eq workout_one.instructions
      expect(response_body["difficulty"]).to eq workout_one.difficulty
      expect(response_body["image"]).to eq workout_one.image
    end
  end
end
