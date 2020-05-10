import React from 'react'

const WorkoutShowTile = (props) => {
  let workout = props.workout

  return(
    <div>
      <div>
        <img className="workout-image-url" src={workout.image_url}/>
      </div>
      <div className="workout-show-tile">
        <div className="workout-name">
          Exercise: {workout.name}
        </div>
        <div className="workout-difficulty">
          Difficulty Level: {workout.difficulty_level}
        </div>
        <div class="workout-reps">
          Reps: {workout.reps}
        </div>
        <div class="workout-sets">
          Sets: {workout.sets}
        </div>
        <div class="workout-time">
          Time: {workout.workout_time}
        </div>
        <div class="workout-body">
          Concentration: {workout.body_part}
        </div>
        <div class="workout-type">
          Type: {workout.workout_type}
        </div>
      </div>
      <div className="fade_bar"></div>
      <div class="workout-instructions">
        Instructions: {workout.instructions}
      </div>
      <div className="fade_bar">
      </div>
    </div>
  )
}

export default WorkoutShowTile
