struct ReconstructItinerary {
    var text = "Hello, World!"
}

func findItinerary(_ tickets: [[String]]) -> [String] {
  guard !tickets.isEmpty else { return [] }
  var ticketsDic: [String:[String]] = [:]
  
  for (_, itinerary) in tickets.enumerated() {
    guard itinerary.count == 2 else { return []}
    if ticketsDic[itinerary[0]] == nil {
      ticketsDic[itinerary[0]] = [itinerary[1]]
    } else {
      ticketsDic[itinerary[0]]?.append(itinerary[1])
    }
  }
  
  var origin = "JFK"
  var result: [String] = [origin]
  
  while !ticketsDic.isEmpty {
    guard let destinations = ticketsDic[origin] else { return [] }
    let min = destinations.min()!
    let firstIndex = ticketsDic[origin]?.firstIndex(where: { $0 == min } )
    ticketsDic[origin]?.remove(at: firstIndex!)
    if ticketsDic[origin]!.isEmpty   {
      ticketsDic[origin] = nil
    }
    result.append(min)
    origin = min
  }
  return result
}
