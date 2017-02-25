/* 
*   Swift 3 - "Delivery"
*   Author: Jack Rus
*/

import UIKit

func minimalBasketPrice(maxPrice: Int, vendorsDelivery: [Int], vendorsProducts: [[Int]]) -> [Int] {
    var answer: [Int] = []
    var productMin: [Int] = []
    var vendorsFull = vendorsProducts
    var maxDelivery: [Int] = []
    func answerSumFunc (a: [Int]) -> Int {
        var answerSum = 0
        for i in 0..<answer.count {
            answerSum += vendorsProducts[answer[i]][i]
        }
        return answerSum
    }
    
    func removeDublicate (ab: [Int]) -> [Int] {
        var answer1:[Int] = []
        for i in ab {
            if !answer1.contains(i) {
                answer1.append(i)
            }
        }
        return answer1
    }
    
    // defying the base for comparison
    for _ in vendorsProducts[0] {
        productMin.append(0)
        answer.append(0)
    }
    
    for x in 0..<vendorsProducts[0].count {
        var vendorsSorted = vendorsFull.sorted{ $0[x] < $1[x] }
        for y in 0..<vendorsDelivery.count {
            if vendorsSorted[y][x] != -1 {
                answer[x] = y
                productMin[x] = vendorsSorted[y][x]
                break
            }
        }
    }
    
    for x in 0..<vendorsProducts[0].count {
        maxDelivery.append(0)
        for y in 0..<vendorsProducts.count {
            var vendorsDelMin = vendorsDelivery[0]
            //defying if vendor y has product x
            if vendorsProducts[y][x] != -1 {
                //defying if x is Min
                if vendorsProducts[y][x] < productMin[x] {
                    answer[x] = y
                    maxDelivery[x] = vendorsDelivery[y]
                    productMin[x] = vendorsProducts[y][x]
                    // if vendors with x have similar delivery
                } else if vendorsProducts[y][x] == productMin[x] {
                    if vendorsDelivery[y] < vendorsDelMin {
                        answer[x] = y
                        maxDelivery[x] = vendorsDelivery[y]
                        vendorsDelMin = vendorsDelivery[y]
                    } else if vendorsDelivery[y] == vendorsDelMin {
                        maxDelivery[x] = vendorsDelivery[y]
                    }
                }
            }
        }
    }
    
    if answerSumFunc(a: answer) < maxPrice {
        //creating full array - connecting all values
        for i in 0..<vendorsProducts.count {
            vendorsFull[i].append(vendorsDelivery[i])
            vendorsFull[i].append(i)
        }
        
        for x in 0..<answer.count {
            if maxDelivery[x] == maxDelivery.max() {
                var vendorsSorted = vendorsFull.sorted{ $0[x] < $1[x] }
                for y in 0..<vendorsDelivery.count {
                    if vendorsSorted[y][x] != -1 && vendorsSorted[y][x] != vendorsProducts[answer[x]][x] {
                        answer[x] = vendorsSorted[y].last!
                        if answerSumFunc(a: answer) == maxPrice {
                            return removeDublicate(ab: answer)
                        } else if answerSumFunc(a: answer) < maxPrice {
                            break
                        }
                        
                    }
                }
            }
        }
    }
    
    return removeDublicate(ab: answer)
}


/* 
*   Swift 2
*   Author: Jack Rus
*/
 
 func minimalBasketPrice(maxPrice: Int, vendorsDelivery: [Int], vendorsProducts: [[Int]]) -> [Int] {
   var answer: [Int] = []
   var productMin: [Int] = []
   var vendorsFull = vendorsProducts
   var maxDelivery: [Int] = []
   func answerSumFunc (abc: [Int]) -> Int {
       var answerSum = 0
       for i in 0..<answer.count {
          answerSum += vendorsProducts[answer[i]][i]
       }
       return answerSum
   }

   func removeDublicate (ab: [Int]) -> [Int] {
       var answer1:[Int] = []
       for i in ab {
         if !answer1.contains(i) {
            answer1.append(i)
         }
       }
       return answer1
   }

   for _ in vendorsProducts[0] {
     productMin.append(0)
     answer.append(0)
   }

   for x in 0..<vendorsProducts[0].count {
     var vendorsSorted = vendorsFull.sort{ $0[x] < $1[x] }
     for y in 0..<vendorsDelivery.count {
       if vendorsSorted[y][x] != -1 {
         answer[x] = y
         productMin[x] = vendorsSorted[y][x]
         break
       }
     }
   }

   for x in 0..<vendorsProducts[0].count {
       maxDelivery.append(0)
       for y in 0..<vendorsProducts.count {
           var vendorsDelMin = vendorsDelivery[0]
           //defying if vendor y has product x
           if vendorsProducts[y][x] != -1 {
               //defying if x is Min
               if vendorsProducts[y][x] < productMin[x] {
                 answer[x] = y
                 maxDelivery[x] = vendorsDelivery[y]
                 productMin[x] = vendorsProducts[y][x]
                 // if vendors with x have similar delivery
               } else if vendorsProducts[y][x] == productMin[x] {
                   if vendorsDelivery[y] < vendorsDelMin {
                     answer[x] = y
                     maxDelivery[x] = vendorsDelivery[y]
                     vendorsDelMin = vendorsDelivery[y]
                       } else if vendorsDelivery[y] == vendorsDelMin {
                       maxDelivery[x] = vendorsDelivery[y]
                       }
                  }
            }
        }
   }

   if answerSumFunc(answer) < maxPrice {
       //creating full array - connecting all values
       for i in 0..<vendorsProducts.count {
           vendorsFull[i].append(vendorsDelivery[i])
           vendorsFull[i].append(i)
       }

       for x in 0..<answer.count {
         if maxDelivery[x] == maxDelivery.maxElement() {
             var vendorsSorted = vendorsFull.sort{ $0[x] < $1[x] }
             for y in 0..<vendorsDelivery.count {
                    if vendorsSorted[y][x] != -1 && vendorsSorted[y][x] != vendorsProducts[answer[x]][x] {
                       answer[x] = vendorsSorted[y].last!
                       if answerSumFunc(answer) == maxPrice {
                         return removeDublicate(answer)
                         } else if answerSumFunc(answer) < maxPrice {
                         break
                       }

                    }
                  }
               }
          }
   }

   return removeDublicate(answer)
}
