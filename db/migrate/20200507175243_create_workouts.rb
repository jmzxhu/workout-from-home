class CreateWorkouts < ActiveRecord::Migration[5.2]
  def change
    create_table :workouts do |t|
      t.string :title, null: false
      t.integer :reps, null: false
      t.integer :sets, null: false
      t.string :time, null: false
      t.string :category, null: false
      t.string :body, null: false
      t.integer :difficulty, null: false
      t.string :image, null: false
      t.text :instructions, null: false

      t.timestamps null: false
    end
  end
end
