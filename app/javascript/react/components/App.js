import React from 'react'
import { BrowserRouter, Switch, Route } from 'react-router-dom'

import WorkoutIndexContainer from './WorkoutIndexContainer'


export const App = (props) => {
  return (
    <div>
      <BrowserRouter>
        <Switch>
          <Route exact path='/' component={WorkoutIndexContainer} />
          <Route exact path='/workouts' component={WorkoutIndexContainer} />
        </Switch>
      </BrowserRouter>
    </div>
  )
}

export default App
