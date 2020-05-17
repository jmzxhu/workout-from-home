import React, { useState, useEffect } from 'react'
import { Redirect } from 'react-router-dom'

import WorkoutShowTile from './WorkoutShowTile'
import WorkoutCommentSectionTile from './WorkoutCommentSectionTile'
import WorkoutCommentTile from './WorkoutCommentTile'


const WorkoutShowContainer = (props) => {
  const [workout, setWorkout] = useState({})
  const [comments, setComments] = useState([])
  const [redirect, setRedirect] = useState(false)
  const [currentUser, setCurrentUser] = useState({
    id: ""
  })

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
      setWorkout(body.workout)
      setComments(body.workout.comments)
      setCurrentUser(body.workout.scope)
    })
    .catch(error => console.error(`Error in fetch: ${error.message}`))
  }, [])

  const addNewComment = formPayload => {
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

  if (redirect) {
    let id = props.match.params.id
    return <Redirect to={`/workouts/${id}`} />
  }

  let commentsArray = comments.map((comment) => {
    let deleteComment = () => {
      fetch(`/api/v1/comments/${comment.id}`, {
        credentials: "same-origin",
        method: "DELETE",
        headers: {
          "Content-type": "application/json",
          "Accept": "application/json"
        }
      })
      .then((response) => response.json())
      .then(body => {
        setComments(body.comments)
      })
    }

    const confirmDelete = () => {
      let confirmMessage = confirm("Do you want to delete your comment?")
      if (confirmMessage === true) {
        deleteComment()
      }
    }

    let deleteButton
    if (currentUser.id !== "") {
      if (currentUser.id === comment.user.id) {
        deleteButton = (
          <button className="button" onClick={confirmDelete}>Delete</button>
        )
      }
    }

    return(
    <WorkoutCommentTile
      key={comment.id}
      comment={comment}
      deleteButton={deleteButton}
      confirmDelete={confirmDelete}
    />
    )
  })

  let commentForm = "Please sign in to add a comment"
  if (currentUser) {
    commentForm = <WorkoutCommentSectionTile addNewComment={addNewComment} />
  }

  return(
    <div>
      <WorkoutShowTile
        workout={workout}
      />
      {commentForm}
      <div className="fade_bar"></div>
      <div className="comments-show">
        {commentsArray}
      </div>
    </div>
  )
}

export default WorkoutShowContainer
