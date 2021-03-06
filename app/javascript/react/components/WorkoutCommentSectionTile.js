import React, { useState } from 'react'

const WorkoutCommentSectionTile = (props) => {
  const [newComment, setNewComment] = useState({
    content: ""
  })

  const handleChange = (event) => {
    setNewComment({
      ...newComment,
      [event.currentTarget.name]:
      event.currentTarget.value
    })
  }

  const handleSubmit = (event) => {
    event.preventDefault()
    props.addNewComment(newComment)
    setNewComment({
      content: ""
    })
  }

  return(
    <div>
    <form className="comment-form" onSubmit={handleSubmit}>
      <label htmlFor="content">Leave us a comment:
        <textarea className="comment-text"
          placeholder="Let us know what you think!"
          id="content"
          name="content"
          rows="4"
          cols="20"
          value={newComment.content}
          onChange={handleChange}
        ></textarea>
      </label>
      <input className="button" type="submit" value="Submit"/>
      </form>
    </div>
  )
}

export default WorkoutCommentSectionTile
