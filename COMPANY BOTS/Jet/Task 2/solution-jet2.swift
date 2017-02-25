/*
*   Swift 3
*   Author: Jack Rus
*/


import UIKit

func catalogUpdate(catalog: [[String]], updates: [[String]]) -> [[String]] {
    var answer: [[String]] = []
    var catalogNew = catalog
    var updatesTemp = updates
    var lastSorting: [String] = []
    var updatesFinal: [[String]] = []
    var t: Int
    for x in updatesTemp {
        t = 0
        for y in 0..<catalogNew.count {
            if x[0] == catalogNew[y][0] {
                t += 1
                for i in 1..<x.count {
                    catalogNew[y].append(x[i])
                }
            }
        }
        if t == 0 {
            catalogNew.append(x)
        }
        updatesTemp = updatesTemp.filter{$0 != x}
    }
    for i in 0..<catalogNew.count {
        let header = catalogNew[i][0]
        lastSorting.append(header)
        catalogNew[i] = catalogNew[i].filter{$0 != header}
        //  catalogNew[i] = catalogNew[i].sorted(by: filterNames)
        catalogNew[i] = catalogNew[i].sorted()
        catalogNew[i].insert(header, at: 0)
    }
    lastSorting = lastSorting.filter{$0 != "root"}
    //  lastSorting = lastSorting.sorted(by: filterNames)
    lastSorting = lastSorting.sorted()
    lastSorting.insert("root", at: lastSorting.count)
    
    for i in lastSorting {
        for x in catalogNew {
            if i == x[0] {
                updatesFinal.append(x)
            }
        }
        
    }
    answer = updatesFinal
    return answer
}

/*
*   Swift 2
*   Author: Jack Rus
*/

 func catalogUpdate(catalog: [[String]], updates: [[String]]) -> [[String]] {
   var answer: [[String]] = []
   var catalogNew = catalog
   var updatesTemp = updates
   var lastSorting: [String] = []
   var updatesFinal: [[String]] = []
   var t: Int
   for x in updatesTemp {
   t = 0
  
     for y in 0..<catalogNew.count {
       if x[0] == catalogNew[y][0] {
       t += 1
         for i in 1..<x.count {
         catalogNew[y].append(x[i])
         }
       }
     }

     if t == 0 {
     catalogNew.append(x)
     }
     
     updatesTemp = updatesTemp.filter{$0 != x}
   }

   for i in 0..<catalogNew.count {
     let header = catalogNew[i][0]
     lastSorting.append(header)
     catalogNew[i] = catalogNew[i].filter{$0 != header}

     catalogNew[i] = catalogNew[i].sort{$0.compare($1) == NSComparisonResult.OrderedAscending}

     catalogNew[i].insert(header, atIndex: 0)
   }
   
   lastSorting = lastSorting.filter{$0 != "root"}
   lastSorting = lastSorting.sort{$0.compare($1) == NSComparisonResult.OrderedAscending}
   lastSorting.insert("root", atIndex: lastSorting.count)

   for i in lastSorting {
     for x in catalogNew {
       if i == x[0] {
       updatesFinal.append(x)
       }
     }
   }
   answer = updatesFinal
   return answer
   }
