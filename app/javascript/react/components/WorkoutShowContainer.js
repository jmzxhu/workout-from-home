import React, { useState, useEffect } from 'react'

import WorkoutShowTile from './WorkoutShowTile'
import WorkoutCommentSectionTile from './WorkoutCommentSectionTile'
import WorkoutCommentTile from './WorkoutCommentTile'

const WorkoutShowContainer = (props) => {
  const [workout, setWorkout] = useState({})
  const [comments, setComments] = useState([])
  const [currentUser, setCurrentUser] = useState({})


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
      debugger
      setWorkout(body)
      // setComments(body)
    })
    .catch(error => console.error(`Error in fetch: ${error.message}`))
  }, [])

  const addNewComment = formPayload => {
    debugger
    let id = props.match.params.id
    fetch(`/api/v1/workouts/${id}/comments`, {
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
      setComments([...comments, body.comment])
    })
    .catch(error => console.error(`Error in fetch: ${error.message}`))
  }

  let commentsArray = comments.map((comment) => {
    return(
    <WorkoutCommentTile
      key={comment.id}
      comment={comment}
      currentUser={props.currentUser}
    />
    )
  })

  return(
    <div>
      <WorkoutShowTile
        workout={workout}
      />
      <WorkoutCommentSectionTile
        addNewComment={addNewComment}
      />
      <div>
        {commentsArray}
      </div>
    </div>
  )
}

export default WorkoutShowContainer
