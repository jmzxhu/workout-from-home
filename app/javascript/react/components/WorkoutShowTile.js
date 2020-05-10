import React from 'react'

const WorkoutShowTile = (props) => {
  let workout = props.workout

  return(
    <div>
      <div>
        <img className="workout-image" src={workout.image}/>
      </div>
      <div className="workout-show-tile">
        <div className="workout-name">
          Exercise: {workout.title}
        </div>
        <div className="workout-difficulty">
          Difficulty Level: {workout.difficulty}
        </div>
        <div class="workout-reps">
          Reps: {workout.reps}
        </div>
        <div class="workout-sets">
          Sets: {workout.sets}
        </div>
        <div class="workout-time">
          Time: {workout.time}
        </div>
        <div class="workout-body">
          Concentration: {workout.body}
        </div>
        <div class="workout-category">
          Type: {workout.category}
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
