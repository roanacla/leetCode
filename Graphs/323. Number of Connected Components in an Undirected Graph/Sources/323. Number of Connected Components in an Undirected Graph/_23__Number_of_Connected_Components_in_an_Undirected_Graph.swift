// Create graph (adjacency List)
// call DFS to all the nodes, and store the ones I visited
// // count the number of components (each time I call DFS wil lcount as a component)



func countComponents(_ n: Int, _ edges: [[Int]]) -> Int {
  var adjacencyList: [Int: Set<Int>] = [:]
  var visited: Set<Int> = []
  var components = 0
  
  for edge in edges {
    adjacencyList[edge[0],  default:[]].insert(edge[1])
    adjacencyList[edge[1], default:[]].insert(edge[0])
  }
  
  for node in 0..<n {
    if !visited.contains(node) {
      dfs(&visited, adjacencyList, [node])
      components += 1
    }
    
  }
  
  return components
}

func dfs(_ visited: inout Set<Int>, _ graph: [Int: Set<Int>], _ stack: [Int] ) {
  
  var stack = stack
  let currentNode = stack.popLast()!
  visited.insert(currentNode)
  let neighbors = graph[currentNode] ?? []
  
  
  for neighbor in neighbors {
    if !visited.contains(neighbor) {
      stack.append(neighbor)
      dfs(&visited, graph, stack )
    }
  }
}

