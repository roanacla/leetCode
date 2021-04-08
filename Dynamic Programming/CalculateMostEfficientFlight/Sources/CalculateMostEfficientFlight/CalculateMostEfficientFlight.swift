struct CalculateMostEfficientFlight {
    var text = "Hello, World!"
}

func calculcateMostEfficientFlight(source: [[Int]], destination: [[Int]], target: Int) -> [[Int]] {
  let sourceFlights = source.sorted { $0[1] < $1[1] }
  let destinationFlights = destination.sorted { $0[1] < $1[1] }
  
  var optimalMileage = 0
  let totalFlights = sourceFlights.count
  var optimalFlights: [[Int]] = []
  
  source: for i in 0..<totalFlights {
    let source = sourceFlights[i]
    let sourceMileage = source[1]
    destination: for j in (0..<totalFlights).reversed() {
      let destination = destinationFlights[j]
      let destinationMilage = destination[1]
      let totalMileage = sourceMileage + destinationMilage
      if optimalMileage > totalMileage {
        continue source
      }
      if optimalMileage <= totalMileage && totalMileage <= target{
        if let last = optimalFlights.last,
           sourceFlights[last[0]-1][1] + destinationFlights[last[1]-1][1] == totalMileage {
          optimalFlights.append([source[0],destination[0]])
        } else {
          optimalFlights = [[source[0],destination[0]]]
        }
        optimalMileage = totalMileage
      }
    }
  }
  
  return optimalFlights
}

//

//let sourceFlights =  [[1,2000],[2,4000],[3,5000],[4,9000]]
//let destinationFlights = [[1,1000],[2,3000],[3,54000],[4,5000]]
//let target = 11000
//
//print(calculcateMostEfficientFlight(source: sourceFlights, destination: destinationFlights, target: target))
