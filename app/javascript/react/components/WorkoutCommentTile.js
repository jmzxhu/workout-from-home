import React from 'react'

const WorkoutCommentTile = (props) => {
  let comment = props.comment
  let user = comment["user_screen_name"]
  let date = comment["formatted_date"]

  return(
    <div>
      <h5>{user}</h5>
      <h7>{date}</h7>
      <p>{comment.content}</p>
    </div>
  )
}

export default WorkoutCommentTile
