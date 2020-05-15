import React, { useState } from 'react'
import { Redirect, Link } from 'react-router-dom'

import WorkoutNewFormTile from './WorkoutNewFormTile'

const WorkoutNewFormContainer = (props) => {
  const [newWorkout, setNewWorkout] = useState({})
  const [shouldRedirect, setShouldRedirect] = useState(false)

  const addNewWorkout = (formPayload) => {
    fetch(`/api/v1/workouts`, {
      credentials: "same-origin",
      method: "POST",
      body: JSON.stringify(formPayload),
      headers: {
        "Accept": "application/json",
        "Content-type": "application/json"
      }
    })
    .then((response) => {
      if (response.ok) {
        return response
      } else {
        let errorMessage = `${response.status} (${response.statusText})`
        let error = new Error(errorMessage)
        throw(error)
      }
    })
    .then((response) => response.json())
    .then(body => {
      debugger
      setNewWorkout(body.workout)
      setShouldRedirect(true)
    })
    .catch(error => console.error(`Error in fetch: ${error.message}`))
  }

  if (shouldRedirect) {
    return <Redirect to={`/workouts/${newWorkout.id}`} />
  }

  return(
    <WorkoutNewFormTile
      addNewWorkout={addNewWorkout}
    />
  )
}

export default WorkoutNewFormContainer
