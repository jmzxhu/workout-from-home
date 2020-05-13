import React from 'react'

const WorkoutCommentTile = (props) => {
  let comment = props.comment
  let user = comment["user_screen_name"]
  let date = comment["formatted_date"]
  let deleteButton = props.deleteButton
  let confirmDelete = props.confirmDelete

  return(
    <div>
      <h5>{user}</h5>
      <p>{date}</p>
      <p>{comment.content}</p>
      <div>{deleteButton}</div>
    </div>
  )
}

export default WorkoutCommentTile
