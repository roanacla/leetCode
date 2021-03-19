
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
  
  let adjacencyList = createAdjacencyList(array: edges)
  var visited = Set<Int>()
  return helper(-1, adjacencyList, &visited, [edges[0][0]] )
}


func helper(_ parent: Int, _ adjacencyList: [Int:[Int]], _ visited: inout Set<Int>, _ stack: [Int] ) -> Bool {
  var stack = stack
  let currentNode = stack.popLast()!
  guard !visited.contains(currentNode) else { return false }
  visited.insert(currentNode)
  let neighbors = adjacencyList[currentNode]!
  
  for neighbor in neighbors {
    if neighbor != parent {
      stack.append(neighbor)
      let result = helper(currentNode, adjacencyList, &visited, stack)
      if result == false {
        return false
      }
    }
  }
  
  return true
}



