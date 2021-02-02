struct MaximumProfitJobScheduling {
    var text = "Hello, World!"
}

//typealias ProfitTuple = (startTime: Int, endTime: Int, profit: Int, visited: Bool)

//func jobScheduling(_ startTime: [Int], _ endTime: [Int], _ profit: [Int]) -> Int {
//  guard startTime.count == endTime.count && endTime.count == profit.count else { return 0}
//  var data: [ProfitTuple] = []
//
//  for index in 0..<startTime.count {
//    data.append(ProfitTuple(startTime: startTime[index],
//                            endTime: endTime[index],
//                            profit: profit[index],
//                            visited: false))
//  }
//
//  data.sort(by: {$0.startTime < $1.startTime })
//
//  var profits: [Int] = []
//
//  for i in 0..<data.count {
////    if data[i].visited == false {
//      profits.append(getProfits(for: &data, startIndex: i))
////    }
//  }
//
//  return profits.max() ?? 0
//}
//
//func getProfits(for data: inout [ProfitTuple], startIndex: Int) -> Int {
//  let total = data[startIndex].profit
//  data[startIndex].visited = true
//  var totals: [Int] = []
//
//  if let nextPossibleIndex = data.firstIndex(where: { $0.startTime >= data[startIndex].endTime}) {
//    for index in nextPossibleIndex..<data.endIndex {
////      if data[index].visited == false {
//        totals.append(total + getProfits(for: &data, startIndex: index))
////      }
//    }
//  }
//
//  return totals.max() ?? total
//}
//typealias ProfitTuple = (startTime: Int, endTime: Int, profit: Int, possibleProfits: [Int])
typealias ProfitTuple = (startTime: Int, endTime: Int, profit: Int, accumulatedProfit: Int)
func jobScheduling(_ startTime: [Int], _ endTime: [Int], _ profit: [Int]) -> Int {
  guard startTime.count == endTime.count && endTime.count == profit.count else { return 0 }
  if startTime.count == 1 { return profit[0] }
  
  
  var data: [ProfitTuple] = []
  for index in 0..<startTime.count {
    data.append(ProfitTuple(startTime: startTime[index],
                            endTime: endTime[index],
                            profit: profit[index],
                            accumulatedProfit: profit[index]))
  }
  data.sort(by: {$0.startTime < $1.startTime})
  
  var rightIndex = data.index(before: data.endIndex)
  
  while rightIndex != data.index(before: data.startIndex) {
    data[rightIndex].profit = data[rightIndex].accumulatedProfit
    let prof = data[rightIndex].profit
    let sTime = data[rightIndex].startTime
    var subRightIndex = data.index(before: rightIndex)
    while subRightIndex != data.index(before: data.startIndex) {
      if sTime >= data[subRightIndex].endTime {
        let sum = prof + data[subRightIndex].profit
        data[subRightIndex].accumulatedProfit = max(data[subRightIndex].accumulatedProfit,sum)
      }
      subRightIndex = data.index(before: subRightIndex)
    }
    rightIndex = data.index(before: rightIndex)
  }
  print("llegué")
  return data.compactMap{ $0.profit }.max() ?? 0
}

