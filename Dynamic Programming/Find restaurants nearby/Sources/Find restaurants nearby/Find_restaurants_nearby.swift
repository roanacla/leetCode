import Foundation

struct Find_restaurants_nearby {
    var text = "Hello, World!"
}

func findRestaurants(allLocations: [[Int]], numRestaurants: Int) -> [[Int]] {
  var distances: [(index: Int, distance: Double)] = []
  var possibleDeletions = allLocations.count - numRestaurants
  
  for index in 0..<allLocations.count {
    let x = Double(allLocations[index][0])
    let y = Double(allLocations[index][1])
    let distance = sqrt(pow(x,2) + pow(y,2))
    distances.append((index,distance))
  }
  distances.sort { $0.distance < $1.distance }
  
  var index = 0
  var result: [[Int]] = []
  
  while index < numRestaurants {
    if index > 0 && distances[index - 1] == distances[index] && possibleDeletions > 0 {
      possibleDeletions -= 1
    } else {
      result.append(allLocations[distances[index].index])
    }
    index += 1
  }
  let remaining = numRestaurants - result.count
  for _ in 0..<remaining {
    result.append([])
  }
  return result
}

//findRestaurants(allLocations: [[1,2],[3,4],[1,-1]], numRestaurants: 2)
