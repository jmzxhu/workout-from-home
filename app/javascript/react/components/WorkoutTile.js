import React from 'react'
import { Link } from 'react-router-dom'

const WorkoutTile = (props) => {
  let workout = props.workout

  return (
    <div className="workout-tile">
      <div className="tile cell small-12 medium-4 large-4">
        <div className="workout-title">
          <Link to={`/workouts/${props.workout.id}`}>
            <img className="image-tile" src={workout.image_url}/>
            <div className="workout-tile-name">
              Exercise: {workout.name}
            </div>
            <div className="workout-tile-difficulty">
              Difficulty Level: {workout.difficulty_level}
            </div>
          </Link>
        </div>
      </div>
    </div>
  )
}

export default WorkoutTile
