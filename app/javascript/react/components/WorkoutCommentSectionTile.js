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
    <form onSubmit={handleSubmit}>
      <label htmlFor="content">Comments:
        <textarea
          placeholder="Let us know what you think"
          id="content"
          name="content"
          rows="5"
          cols="33"
          value={newComment.content}
          onChange={handleChange}
        ></textarea>
      </label>
      <input type="submit" value="submit"/>
      </form>
    </div>
  )
}

export default WorkoutCommentSectionTile
