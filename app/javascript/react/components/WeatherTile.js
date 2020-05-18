import React from 'react'

const WeatherTile = (props) => {
  let weather = props.weather
  let symbol = "°"
  let icon = weather.icon
  let iconLink = `http://openweathermap.org/img/wn/${icon}@2x.png`

  return(
    <div className="grid-container">
      <div className="grid-x grid-margin-x">
        <div className="cell small-12 medium-12 large-12">
          <div className="weather">
            <img className="weather-icon" src={iconLink}/>
            <div className="weather-block">
              {weather.condition}
            </div>
            <div className="weather-block">
              {weather.city}
            </div>
            <div className="weather-block">
              Current: {`${Math.round(weather.currentTemperature)}${symbol}`}
            </div>
            <div className="weather-block">
              Feels like: {`${Math.round(weather.feelsLike)}${symbol}`}
            </div>
            <div className="weather-block">
              Low: {`${Math.round(weather.minTemperature)}${symbol}`}
            </div>
            <div className="weather-block">
              High: {`${Math.round(weather.maxTemperature)}${symbol}`}
            </div>
          </div>
        </div>
      </div>
    </div>
  )
}

export default WeatherTile
