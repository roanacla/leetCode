//
//  File.swift
//  
//
//  Created by Roger Andres Navarro Claros on 6/26/21.
//

import Foundation

var graph: [String: [String]] = [:]
var result: [String] = []
var ticketsCount = 0

func findItinerary(_ tickets: [[String]]) -> [String] {
  ticketsCount = tickets.count
  for ticket in tickets {
    graph[ticket[0], default: []].append(ticket[1])
  }
  _ = helperDFS("JFK")
  
  return result
}

func helperDFS(_ current: String) -> Bool {
  result.append(current)
  var destinies = graph[current] ?? []
  if destinies.isEmpty {
    return ticketsCount + 1 == result.count ? true : false
  } else {
    destinies.sort()
    for destiny in destinies {
      let index = graph[current]!.firstIndex(of: destiny)!
      graph[current]!.remove(at: index)
      if helperDFS(destiny) {
        return true
      } else {
        _ = result.removeLast()
        graph[current]!.append(destiny)
      }
    }
  }
  return false
}
