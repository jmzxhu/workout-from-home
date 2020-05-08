import React from 'react'

const WorkoutTile = (props) => {
  let workout = props.workout

  return (
    <div className="workout-tile">
      <div className="tile cell small-12 medium-4 large-4">
        <div className="workout-title">
          <img className="image-tile" src={workout.image_url}/>
          <div className="workout-name">
            Exercise: {workout.name}
          </div>
          <div className="workout-difficulty">
            Difficulty: {workout.difficulty_level}
          </div>
        </div>
      </div>
    </div>
  )
}

export default WorkoutTile
