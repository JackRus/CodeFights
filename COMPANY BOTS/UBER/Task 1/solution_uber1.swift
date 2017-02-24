
/*
*   Swift 2
*   Author: Jack Rus
*/

func fareEstimator(ride_time: Int, ride_distance: Int, cost_per_minute: [Double], cost_per_mile: [Double]) -> [Double] {
    var fares:[Double] = []

    for x in 0..<cost_per_minute.count {
        fares.append(Double(ride_time) * cost_per_minute[x] + Double(ride_distance) * cost_per_mile[x])
    }
    return fares
}


/*
*   Swift 3
*   Author: Jack Rus
*/

import UIKit

func fareEstimator(ride_time: Int, ride_distance: Int, cost_per_minute: [Double], cost_per_mile: [Double]) -> [Double] {
    var fares:[Double] = []

    for x in 0..<cost_per_minute.count {
        fares.append(Double(ride_time) * cost_per_minute[x] + Double(ride_distance) * cost_per_mile[x])
            }
    return fares
}
