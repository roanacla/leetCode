
//func findItinerary(_ tickets: [[String]]) -> [String] {
//  guard !tickets.isEmpty else { return [] }
//  var ticketsDic: [String:[String]] = [:]
//
//  for (_, itinerary) in tickets.enumerated() {
//    guard itinerary.count == 2 else { return []}
//    if ticketsDic[itinerary[0]] == nil {
//      ticketsDic[itinerary[0]] = [itinerary[1]]
//    } else {
//      ticketsDic[itinerary[0]]?.append(itinerary[1])
//    }
//  }
//
//  var origin = "JFK"
//  var result: [String] = [origin]
//
//  while !ticketsDic.isEmpty {
//    guard let destinations = ticketsDic[origin] else { return [] }
//    let min = destinations.min()!
//    let firstIndex = ticketsDic[origin]?.firstIndex(where: { $0 == min } )
//    ticketsDic[origin]?.remove(at: firstIndex!)
//    if ticketsDic[origin]!.isEmpty   {
//      ticketsDic[origin] = nil
//    }
//    result.append(min)
//    origin = min
//  }
//  return result
//}




//func findItinerary(_ tickets: [[String]]) -> [String] {
//  let airports: [String] = Array(Set(tickets.joined()))
//
//  var graph = AdjacencyList<String>()
//  var airportsDic: [String:GraphVertex<String>] = [:]
//  for airport in airports {
//    airportsDic[airport] = graph.addVertex(airport)
//  }
//
//  for ticket in tickets {
//    if let source = airportsDic[ticket[0]], let destination = airportsDic[ticket[1]] {
//      let graphEdge = GraphEdge(source: source, destination: destination)
//      graph.add(graphEdge)
//    }
//  }
//
//  let shortestPaths = Dijkstra.getShortestPaths(source: airportsDic["JFK"]!, graph: graph)
//  let shortestPath = shortestPaths.max { ($0.value?.count ?? 0) < ($1.value?.count ?? 0) }?.value
//  guard let edgesPath = shortestPath?.reversed() else { return [] }
//
//
//
//  return edgesPath.map{ $0.source.element } + [edgesPath.last!.destination.element]
//}


func findItinerary(_ tickets: [[String]]) -> [String] {
  var dic: [String: [String]] = [:]
  for ticket in tickets {
    if dic[ticket[0]] == nil {
      dic[ticket[0]] = [ticket[1]]
    } else {
      dic[ticket[0]]?.append(ticket[1])
    }
  }
  var result: [String] = []
  var origin = "JFK"
  result.append(origin)
  repeat {
//    let destination = dic[origin]!.min{ $1.lexicographicallyPrecedes($0) }!
    guard let destination = dic[origin]?.sorted{ $0.lexicographicallyPrecedes($1) }.first else { return result }
    result.append(destination)
    let removeIndex = dic[origin]!.firstIndex(of: destination)!
    dic[origin]!.remove(at: removeIndex)
    if dic[origin]!.count == 0 {
      dic[origin] = nil
    }
    origin = destination
  } while dic.count > 0
  
  
  return result
}
