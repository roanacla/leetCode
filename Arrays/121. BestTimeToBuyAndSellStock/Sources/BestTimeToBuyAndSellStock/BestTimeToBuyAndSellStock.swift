import Foundation



func maxProfit(_ prices: [Int]) -> Int {
  var minimum = Int.max
  var maxProfit = 0
  for i in 0..<prices.count {
    if prices[i] < minimum {
      minimum = prices[i]
    } else if prices[i] - minimum > maxProfit {
      maxProfit = prices[i] - minimum
    }
  }
  return maxProfit
}

