import React from 'react'

const WorkoutShowTile = (props) => {
  let workout = props.workout

  return(
    <div className="show-tile">
      <div className="workout-image">
        <img src={workout.image}/>
      </div>
      <div className="workout-show-tile">
        <div className="workout-description-tile">
          <div className="workout-name">
            Exercise: {workout.title}
          </div>
          <div className="workout-difficulty">
            Difficulty Level: {workout.difficulty}
          </div>
        </div>
        <div className="workout-metrics-tile">
          <div className="workout-reps">
            Reps: {workout.reps}
          </div>
          <div className="workout-sets">
            Sets: {workout.sets}
          </div>
          <div className="workout-time">
            Time: {workout.time}
          </div>
        </div>
        <div className="workout-types-tile">
          <div className="workout-body">
            Concentration: {workout.body}
          </div>
          <div className="workout-category">
            Category: {workout.category}
          </div>
        </div>
      </div>
      <div className="fade_bar"></div>
      <div className="workout-instructions">
        Instructions:
        <div className="instruction-list">
          {workout.instructions}
        </div>
      </div>
      <div className="fade_bar">
      </div>
    </div>
  )
}

export default WorkoutShowTile
