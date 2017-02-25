/*
*   Swift 3
*   Author: Jack Rus
*/ 

import UIKit

func packageBoxing(pkg: [Int], boxes: [[Int]]) -> Int {
    var answer = 0
    var pkgNew = pkg
    let a = pkgNew.min()!, aIndex = pkgNew.index(of: a)!
    pkgNew.remove(at: aIndex)
    let b = pkgNew.max()!, bIndex = pkgNew.index(of: b)!
    pkgNew.remove(at: bIndex)
    let c = pkgNew[0]
    var pkgTemp: [Int] = [], boxesFit: [Int] = [], volumes: [Int] = []

    
    for x in 0..<boxes.count {
        pkgTemp = boxes[x]
        let a1 = pkgTemp.min()!
        
        let a1Index = pkgTemp.index(of: a1)!
        pkgTemp.remove(at: a1Index)
        let b1 = pkgTemp.max()!
        
        let b1Index = pkgTemp.index(of: b1)!
        pkgTemp.remove(at: b1Index)
        let c1 = pkgTemp[0]
        print(c1)
        if a <= a1 && b <= b1 && c <= c1 {
            boxesFit.append(x)
            volumes.append(a1 * b1 * c1)
        }
    }
    boxesFit
    volumes
    if boxesFit.count == 0 {
        answer = -1
        return answer
    } else {
    answer = boxesFit[volumes.index(of:  volumes.min()! )!]
    }
    return answer
}
