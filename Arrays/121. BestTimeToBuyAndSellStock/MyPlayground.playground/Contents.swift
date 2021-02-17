import UIKit

var str = "Hello, playground"

func maxProfit(_ prices: [Int]) -> Int {
  if prices.isEmpty || prices.count < 2 { return 0 }
  let auxPrices = Array(prices.enumerated().sorted{ $0.1 < $1.1 })
  print(auxPrices)
  var result = 0
  var leftIndex = auxPrices.startIndex
  var rightIndex = auxPrices.endIndex - 1
  
  while leftIndex < rightIndex {
    if auxPrices[leftIndex].offset < auxPrices[rightIndex].offset {
      result = auxPrices[rightIndex].element - auxPrices[leftIndex].element
      break
    } else {
      if auxPrices[leftIndex + 1].offset < auxPrices[rightIndex].offset {
        leftIndex = auxPrices.index(after: leftIndex)
      } else {
        rightIndex = auxPrices.index(before: rightIndex)
      }
    }
  }
  
  return result
}

let test = [7,1,5,3,6,4,2]

print(maxProfit(test))
