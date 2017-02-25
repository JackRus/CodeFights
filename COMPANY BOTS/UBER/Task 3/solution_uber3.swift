/*
*   Swift 2
*   Author: Jack Rus
*/


func parkingSpot(carDimensions: [Int], parkingLot: [[Int]], luckySpot: [Int]) -> Bool {
    var answer = false
    let y1 = luckySpot[0]
    let y2 = luckySpot[2]
    let x1 = luckySpot[1]
    let x2 = luckySpot[3]
    var sum: Int = 0
    var spotSideX = 0
    var spotSideY = 0
    var horisontal: Bool = false
    var vertical: Bool = false

    // Assuming the luckySpot == carDementions (sizewise)
    //checking if parking is emthy
    
    for y in y1...y2 {
        for x in x1...x2 {
            sum += parkingLot[y][x]
        }
        if sum != 0 {
            answer = false
            return answer
        }
    }

    // vertical or horisontal luckySpot
    
    for _ in x1...x2 {
        spotSideX += 1
    }
    for _ in y1...y2 {
        spotSideY += 1
    }
    if spotSideX > spotSideY {
        horisontal = true
    } else {
        vertical = true
    }

    // end of vert-horis
    
        if horisontal {
            for y in y1...y2 {
                for x in 0..<x1 {
                    sum += parkingLot[y][x]
                }
                if sum == 0 {
                    answer = true
                    return answer
                }
                sum = 0
                for x in (x2 + 1)..<parkingLot[1].count {
                    sum += parkingLot[y][x]
                }
                if sum == 0 {
                    answer = true
                    return answer
                }
            }
        } else if vertical {
            for x in x1...x2 {
                sum = 0
                for y in 0..<y1 {
                    sum += parkingLot[y][x]
                }
                if sum == 0 {
                    answer = true
                    return answer
                }
                sum = 0
                for y in (y2+1)..<parkingLot.count {
                    sum += parkingLot[y][x]
                }
                if sum == 0 {
                    answer = true
                    return answer
                }
            }
        }
    return answer
    // END FUNCTION
}


/*
*   Swift 3
*   Author: Jack Rus
*/

import UIKit

func parkingSpot(carDimensions: [Int], parkingLot: [[Int]], luckySpot: [Int]) -> Bool {
    var answer = false
    let y1 = luckySpot[0]
    let y2 = luckySpot[2]
    let x1 = luckySpot[1]
    let x2 = luckySpot[3]
    var sum: Int = 0
    var spotSideX = 0
    var spotSideY = 0
    var horisontal: Bool = false
    var vertical: Bool = false

    // Assuming the luckySpot == carDementions (sizewise)
    //checking if parking is emthy
    
    for y in y1...y2 {
        for x in x1...x2 {
            sum += parkingLot[y][x]
        }
        if sum != 0 {
            answer = false
            return answer
        }
    }

    // vertical or horisontal luckySpot
    
    for _ in x1...x2 {
        spotSideX += 1
    }
    for _ in y1...y2 {
        spotSideY += 1
    }
    if spotSideX > spotSideY {
        horisontal = true
    } else {
        vertical = true
    }

    // end of vert-horis
    
        if horisontal {
            for y in y1...y2 {
                for x in 0..<x1 {
                    sum += parkingLot[y][x]
                }
                if sum == 0 {
                    answer = true
                    return answer
                }
                sum = 0
                for x in (x2 + 1)..<parkingLot[1].count {
                    sum += parkingLot[y][x]
                }
                if sum == 0 {
                    answer = true
                    return answer
                }
            }
        } else if vertical {
            for x in x1...x2 {
                sum = 0
                for y in 0..<y1 {
                    sum += parkingLot[y][x]
                }
                if sum == 0 {
                    answer = true
                    return answer
                }
                sum = 0
                for y in (y2+1)..<parkingLot.count {
                    sum += parkingLot[y][x]
                }
                if sum == 0 {
                    answer = true
                    return answer
                }
            }
        }
    return answer
    // END FUNCTION
}

