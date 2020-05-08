class CreateWorkouts < ActiveRecord::Migration[5.2]
  def change
    create_table :workouts do |t|
      t.string :name, null: false
      t.integer :reps, null: false
      t.integer :sets, null: false
      t.string :workout_time, null: false
      t.string :workout_type, null: false
      t.string :body_part, null: false
      t.integer :difficulty_level, null: false
      t.string :image_url, null: false
      t.text :instructions, null: false

      t.timestamps null: false
    end
  end
end
