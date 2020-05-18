import React, { useState } from 'react'
import { Redirect, Link } from 'react-router-dom'
import _ from 'lodash'

import ErrorList from './ErrorList'

const WorkoutNewFormTile = (props) => {
  const [newWorkout, setNewWorkout] = useState({
    title: "",
    reps: "",
    sets: "",
    time: "",
    category: "",
    body: "",
    difficulty: "",
    image: "",
    instructions: ""
  })

  const [errors, setErrors] = useState({})

  const handleChange = (event) => {
    setNewWorkout({
      ...newWorkout,
      [event.currentTarget.name]:
      event.currentTarget.value
    })
  }

  const validateForm = () => {
    let submitErrors = {}
    const requiredFields = ["title", "reps", "sets", "time", "category", "body", "difficulty", "image", "instructions"]
    requiredFields.forEach((field) => {
      if (newWorkout[field].trim() === "") {
        submitErrors = {
          ...submitErrors,
          [field]: "must be filled in"
        }
      }
    })
    setErrors(submitErrors)
    return _.isEmpty(submitErrors)
  }

  const handleSubmit = (event) => {
    event.preventDefault()
    if (validateForm()) {
      props.addNewWorkout(newWorkout)
      setNewWorkout({
        title: "",
        reps: "",
        sets: "",
        time: "",
        category: "",
        body: "",
        difficulty: "",
        image: "",
        instructions: ""
      })
    }
  }

  return(
    <div className="workout-page">
      <form onSubmit={handleSubmit} className="workout-form" >
        <ErrorList errors={errors} />
        <label htmlFor="title">Title:
          <input
          type="text"
          name="title"
          value={newWorkout.title}
          onChange={handleChange}
          />
        </label>
        <label htmlFor="reps">Reps:
          <input
          type="text"
          name="reps"
          value={newWorkout.reps}
          onChange={handleChange}
          />
        </label>
        <label htmlFor="sets">Sets:
          <input
          type="text"
          name="sets"
          value={newWorkout.sets}
          onChange={handleChange}
          />
        </label>
        <label htmlFor="time">Time:
          <input
          type="text"
          name="time"
          value={newWorkout.time}
          onChange={handleChange}
          />
        </label>
        <label htmlFor="category">Category:
          <input
          type="text"
          name="category"
          value={newWorkout.category}
          onChange={handleChange}
          />
        </label>
        <label htmlFor="body">Body:
          <input
          type="text"
          name="body"
          value={newWorkout.body}
          onChange={handleChange}
          />
        </label>
        <label htmlFor="difficulty">Difficulty:
          <input
          type="text"
          name="difficulty"
          value={newWorkout.difficulty}
          onChange={handleChange}
          />
        </label>
        <label htmlFor="image">Image: (URL link)
          <input
          type="text"
          name="image"
          value={newWorkout.image}
          onChange={handleChange}
          />
        </label>
        <label htmlFor="instructions">Instructions:
          <textarea
            placeholder="label your instructions"
            id="instructions"
            name="instructions"
            rows="4"
            cols="20"
            value={newWorkout.instructions}
            onChange={handleChange}
          ></textarea>
        </label>
        <input className="button" type="submit" value="Submit"/>
      </form>
    </div>
  )
}

export default WorkoutNewFormTile
