import React from 'react'
import { Link } from 'react-router-dom'

const WorkoutTile = (props) => {
  let workout = props.workout

  return (
    <div className="grid-container">
      <div className="grid-x grid-margin-x">
        <div className="cell small-12 medium-6 large-4">
          <div className="workout-title">
            <Link to={`/workouts/${props.workout.id}`}>
            <img className="image-tile" src={workout.image}/>
              <div className="workout-tile-name">
                Exercise: {workout.title}
              </div>
              <div className="workout-tile-difficulty">
                Difficulty Level: {workout.difficulty}
              </div>
            </Link>
          </div>
        </div>
      </div>
    </div>
  )
}

export default WorkoutTile
