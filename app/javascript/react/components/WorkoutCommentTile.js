import React from 'react'

const WorkoutCommentTile = (props) => {
  let comment = props.comment
  // let user = props.currentUser
debugger
  return(
    <div>
      <div className="fade_bar"></div>
      <p>{comment.content}</p>
    </div>
  )
}

export default WorkoutCommentTile
