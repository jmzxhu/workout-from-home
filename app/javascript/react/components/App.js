import React from 'react'
import { BrowserRouter, Switch, Route } from 'react-router-dom'

import WorkoutIndexContainer from './WorkoutIndexContainer'
import WorkoutShowContainer from './WorkoutShowContainer'


export const App = (props) => {
  return (
    <div>
      <BrowserRouter>
        <Switch>
          <Route exact path='/' component={WorkoutIndexContainer} />
          <Route exact path='/workouts' component={WorkoutIndexContainer} />
          <Route exact path='/workouts/:id' component={WorkoutShowContainer} />
        </Switch>
      </BrowserRouter>
    </div>
  )
}

export default App
