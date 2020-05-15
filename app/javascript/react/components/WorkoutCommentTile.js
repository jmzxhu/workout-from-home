import React from 'react'

const WorkoutCommentTile = (props) => {
  let comment = props.comment
  let user = comment["user_screen_name"]
  let date = comment["formatted_date"]
  let deleteButton = props.deleteButton
  let confirmDelete = props.confirmDelete

  return(
    <div className="comment-tile">
    <span class="left">
      <h6>{user}</h6>
    </span>
    <span className="right">
      <div className="delete-button">
        {deleteButton}
      </div>
    </span>
    <span className="center">
      <p>{date}</p>
    </span>
      <p>{comment.content}</p>
    </div>
  )
}

export default WorkoutCommentTile
