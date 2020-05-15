import React, { useState, useEffect } from 'react'
import { Link } from 'react-router-dom'

import WorkoutTile from './WorkoutTile'

const WorkoutIndexContainer = (props) => {
  const [workouts, setWorkouts] = useState([])
  const [currentUser, setCurrentUser] = useState({})

  useEffect(() => {
    fetch('/api/v1/workouts')
    .then((response) => {
      if (response.ok) {
        return response
      } else {
        let errorMessage = `${response.status} (${response.statusText})`,
        error = new Error(errorMessage);
        throw(error);
      }
    })
    .then((response) => {
      return response.json()
    })
    .then((body) => {
      setWorkouts(body.workouts)
      setCurrentUser(body.user)
    })
    .catch(error => console.error(`Error in fetch: ${error.message}`))
  }, [])

  let workoutarray = workouts.map((workout) => {
    return(
      <WorkoutTile key={workout.id} workout={workout} />
    )
  })

  let addWorkout
  if (currentUser.role == "admin") {
    addWorkout = (
    <button><Link className="button" to="/workout/new">Add a Workout</Link></button>
    )
  } else {
    addWorkout = ""
  }

  return(
    <div>
      <div className="addWorkoutButton">
        {addWorkout}
      </div>
      <div className="grid-container">
        <div className="tile-container grid-x grid-margin-x">
          {workoutarray}
          </div>
        </div>
    </div>
  )
}

export default WorkoutIndexContainer
