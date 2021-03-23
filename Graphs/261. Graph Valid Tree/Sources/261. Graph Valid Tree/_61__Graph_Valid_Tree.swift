var adjacencyList: [Int: [Int]] = [:]

func createAdjacencyList(array: [[Int]]) -> [Int:[Int]] {
  var adjacencyList: [Int:[Int]] = [:]
  
  for edge in array {
    adjacencyList[edge[0], default: []].append(edge[1])
    adjacencyList[edge[1], default: []].append(edge[0])
  }
  
  return adjacencyList
}

func validTree(_ n: Int, _ edges: [[Int]]) -> Bool {
  if n == 1 { return true }
  guard edges.count == n - 1 else { return false }
  
  adjacencyList = createAdjacencyList(array: edges)
  var visited = Set<Int>()
  return validTreeDFS(-1, &visited, [edges[0][0]] )
}

func validTreeDFS(_ parent: Int, _ visited: inout Set<Int>, _ stack: [Int] ) -> Bool {
  var stack = stack
  let currentNode = stack.popLast()!
  visited.insert(currentNode)
  
  for neighbor in adjacencyList[currentNode]! {
    if neighbor != parent {
      guard !visited.contains(neighbor) else { return false }
      stack.append(neighbor)
      guard validTreeDFS(currentNode, &visited, stack) else { return false }
    }
  }
  
  return true
}
