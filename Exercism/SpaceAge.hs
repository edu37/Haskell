
data Planet = Mercury 
            | Venus 
            | Earth
            | Mars
            | Jupiter
            | Saturn
            | Uranus
            | Neptune 
            deriving (Eq)

ageOn :: Planet -> Float -> Float
secondsOfPlanet :: Float -> Float -> Float

secondsOfPlanet secondsOfLife orbitalPeriod = secondsOfLife / (orbitalPeriod * 31557600)

ageOn planet seconds = 
    if planet == Mercury then secondsOfPlanet seconds 0.2408467 
    else if planet == Venus then secondsOfPlanet seconds 0.61519726
    else if planet == Earth then secondsOfPlanet seconds 1.0
    else if planet == Mars then secondsOfPlanet seconds 1.8808158
    else if planet == Jupiter then secondsOfPlanet seconds 11.862615
    else if planet == Saturn then secondsOfPlanet seconds 29.447498
    else if planet == Uranus then secondsOfPlanet seconds 84.016846
    else if planet == Neptune then secondsOfPlanet seconds 164.79132
    else -1 