import React, { useState, useEffect } from 'react'

import WorkoutShowTile from './WorkoutShowTile'

const WorkoutShowContainer = (props) => {
  const [workout, setWorkout] = useState({})

  useEffect(() => {
    let id = props.match.params.id
    fetch(`/api/v1/workouts/${id}`)
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
      setWorkout(body)
    })
    .catch(error => console.error(`Error in fetch: ${error.message}`))
  }, [])

  return(
    <div>
      <WorkoutShowTile workout={workout} />
    </div>
  )
}

export default WorkoutShowContainer
