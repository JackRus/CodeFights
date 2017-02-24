/*
*   Swift 3
*   Author Jack Rus
*/

import UIKit

func perfectCity(departure: [Double], destination: [Double]) -> Double {
    var lengthOfRoute: Double = 0
    var wholeNumberPartX1: Double = 0.0
    var wholeNumberPartX2: Double = 0.0
    var wholeNumberPartY1: Double = 0.0
    var wholeNumberPartY2: Double = 0.0
    let decDepartureX = modf(departure[0], &wholeNumberPartX1)
    let decDepartureY = modf(departure[1], &wholeNumberPartY1)
    let decDestinationX = modf(destination[0], &wholeNumberPartX2)
    let decDestinationY = modf(destination[1], &wholeNumberPartY2)
    let absX = abs(wholeNumberPartX1 - wholeNumberPartX2)
    let absY = abs(wholeNumberPartY1 - wholeNumberPartY2)
    let decDepartureMinus1 = 1.0 - decDepartureX
    let decDestinationMinus1 = 1.0 - decDestinationX
    let decDepartureMinus1Y = 1.0 - decDepartureY
    let decDestinationMinus1Y = 1.0 - decDestinationY
    
    // If Route is a vector
    if departure[0] == destination[0] {
        lengthOfRoute = abs(departure[1] - destination[1])
    } else if departure[1] == destination[1] {
        lengthOfRoute = abs(departure[0] - destination[0])
    } else if decDepartureX == 0 && decDepartureY == 0 && decDestinationX == 0 && decDestinationY == 0 {
        lengthOfRoute = abs(departure[0] - destination[0]) + abs(departure[1] - destination[1])
    }
    // if not a vector
      else {
        if absX == 0 {
            if (decDepartureX != 0) && (decDestinationX != 0) {
                if (decDepartureMinus1 + decDestinationMinus1) < (decDepartureX + decDestinationX) {
                    lengthOfRoute = absY + decDepartureMinus1 + decDestinationMinus1
                } else {
                    lengthOfRoute = absY + decDepartureX + decDestinationX
                }
                
            }
        } else if absY == 0 {
            if (decDepartureY != 0) && (decDestinationY != 0) {
                if (decDepartureMinus1Y + decDestinationMinus1Y) < (decDepartureY + decDestinationY) {
                    lengthOfRoute = absX + decDepartureMinus1Y + decDestinationMinus1Y
                } else {
                    lengthOfRoute = absX + decDepartureY + decDestinationY
                }
                
            }
          } else {
                lengthOfRoute = abs(departure[0] - destination[0]) + abs(departure[1] - destination[1])
            }
        }
    return lengthOfRoute
}

/*
*   Swift 2
*   Author Jack Rus
*/

func perfectCity(departure: [Double], destination: [Double]) -> Double {
    var lengthOfRoute: Double = 0
    var wholeNumberPartX1: Double = 0.0
    var wholeNumberPartX2: Double = 0.0
    var wholeNumberPartY1: Double = 0.0
    var wholeNumberPartY2: Double = 0.0
    let decDepartureX = modf(departure[0], &wholeNumberPartX1)
    let decDepartureY = modf(departure[1], &wholeNumberPartY1)
    let decDestinationX = modf(destination[0], &wholeNumberPartX2)
    let decDestinationY = modf(destination[1], &wholeNumberPartY2)
    let absX = abs(wholeNumberPartX1 - wholeNumberPartX2)
    let absY = abs(wholeNumberPartY1 - wholeNumberPartY2)
    let decDepartureMinus1 = 1.0 - decDepartureX
    let decDestinationMinus1 = 1.0 - decDestinationX
    let decDepartureMinus1Y = 1.0 - decDepartureY
    let decDestinationMinus1Y = 1.0 - decDestinationY
    
    // If Route is a vector
    if departure[0] == destination[0] {
        lengthOfRoute = abs(departure[1] - destination[1])
    } else if departure[1] == destination[1] {
        lengthOfRoute = abs(departure[0] - destination[0])
    } else if decDepartureX == 0 && decDepartureY == 0 && decDestinationX == 0 && decDestinationY == 0 {
        lengthOfRoute = abs(departure[0] - destination[0]) + abs(departure[1] - destination[1])
    }
    // if not a vector
      else {
        if absX == 0 {
            if (decDepartureX != 0) && (decDestinationX != 0) {
                if (decDepartureMinus1 + decDestinationMinus1) < (decDepartureX + decDestinationX) {
                    lengthOfRoute = absY + decDepartureMinus1 + decDestinationMinus1
                } else {
                    lengthOfRoute = absY + decDepartureX + decDestinationX
                }
                
            }
        } else if absY == 0 {
            if (decDepartureY != 0) && (decDestinationY != 0) {
                if (decDepartureMinus1Y + decDestinationMinus1Y) < (decDepartureY + decDestinationY) {
                    lengthOfRoute = absX + decDepartureMinus1Y + decDestinationMinus1Y
                } else {
                    lengthOfRoute = absX + decDepartureY + decDestinationY
                }
                
            }
          } else {
                lengthOfRoute = abs(departure[0] - destination[0]) + abs(departure[1] - destination[1])
            }
        }
    return lengthOfRoute
}

