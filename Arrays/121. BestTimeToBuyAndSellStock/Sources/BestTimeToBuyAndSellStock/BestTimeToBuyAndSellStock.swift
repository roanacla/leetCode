struct BestTimeToBuyAndSellStock {
    var text = "Hello, World!"
}

func maxProfit(_ prices: [Int]) -> Int {
  if prices.isEmpty || prices.count < 2 { return 0 }
  var result = 0
  var leftIndex = prices.startIndex
  var rightIndex = leftIndex + 1
  
  while rightIndex < prices.count {
    if prices[leftIndex] > prices[rightIndex] {
      leftIndex = rightIndex
      rightIndex = leftIndex + 1
      continue
    }
    if prices[leftIndex] <= prices[rightIndex] {
      let temp =  prices[rightIndex] - prices[leftIndex]
      if result < temp {
        result = temp
      }
      rightIndex += 1
    }
  }
  
  return result
}
