import React from 'react'
import { BrowserRouter, Switch, Route } from 'react-router-dom'

import WorkoutIndexContainer from './WorkoutIndexContainer'
import WorkoutShowContainer from './WorkoutShowContainer'
import WorkoutNewFormContainer from './WorkoutNewFormContainer'
import Background from '../../../assets/images/homeworkout.jpg'

export const App = (props) => {
  return (
    <div>
      <BrowserRouter>
        <Switch>
          <div id="background" src={Background}>
            <Route exact path='/' component={WorkoutIndexContainer} />
            <Route exact path='/workouts' component={WorkoutIndexContainer} />
            <Route exact path='/workouts/new' component={WorkoutNewFormContainer} />
            <Route exact path='/workouts/:id' component={WorkoutShowContainer} />
          </div>
        </Switch>
      </BrowserRouter>
    </div>
  )
}

export default App
