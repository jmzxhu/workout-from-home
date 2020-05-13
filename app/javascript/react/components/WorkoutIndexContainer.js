import React, { useState, useEffect } from 'react'

import WorkoutTile from './WorkoutTile'

const WorkoutIndexContainer = (props) => {
  const [workouts, setWorkouts] = useState([])
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
    })
    .catch(error => console.error(`Error in fetch: ${error.message}`))
  }, [])

  let workoutarray = workouts.map((workout) => {
    return(
      <WorkoutTile key={workout.id} workout={workout} />
    )
  })

  return(
    <div>
      <div className="grid-container">
        <div className="tile-container grid-x grid-margin-x">
          {workoutarray}
          </div>
        </div>
    </div>
  )
}

export default WorkoutIndexContainer
