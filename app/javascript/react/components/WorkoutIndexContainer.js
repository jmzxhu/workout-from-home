import React, { useState, useEffect } from 'react'
import { Link } from 'react-router-dom'

import WorkoutTile from './WorkoutTile'
import WeatherTile from './WeatherTile'

const WorkoutIndexContainer = (props) => {
  const [weather, setWeather] = useState({})
  const [workouts, setWorkouts] = useState([])
  const [currentUser, setCurrentUser] = useState({})


  useEffect(() => {
    fetch('/api/v1/workouts')
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
      let weather = body.weather
      let currentWeather = {
        city: weather.name,
        condition: weather.weather[0].description,
        icon: weather.weather[0].icon,
        currentTemperature: weather.main.temp,
        feelsLike: weather.main.feels_like,
        minTemperature: weather.main.temp_min,
        maxTemperature: weather.main.temp_max
      }
      setWeather(currentWeather)
      setWorkouts(body.workouts)
      setCurrentUser(body.user)
    })
    .catch(error => console.error(`Error in fetch: ${error.message}`))
  }, [])

  let workoutarray = workouts.map((workout) => {
    return(
      <WorkoutTile
      key={workout.id}
      workout={workout}
      />
    )
  })

  let addWorkout
  if (currentUser) {
    if (currentUser.role == "admin") {
      addWorkout = (
      <button><Link className="button" to="/workouts/new">Add a Workout</Link></button>
      )
    } else {
      addWorkout = ""
    }
  }

  let showWeather
  if (currentUser.zip_code) {
    showWeather = <WeatherTile weather={weather} />
  }

  return(
    <div>
      <div className="addWorkoutButton">
        {addWorkout}
      </div>
        {showWeather}
      <div className="grid-container">
        <div className="tile-container grid-x grid-margin-x">
          {workoutarray}
        </div>
      </div>

    </div>
  )
}

export default WorkoutIndexContainer
