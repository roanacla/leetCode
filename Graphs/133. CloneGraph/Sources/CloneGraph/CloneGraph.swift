
public class Node {
  public var val: Int
  public var neighbors: [Node?]
  public init(_ val: Int) {
    self.val = val
    self.neighbors = []
  }
}


//func cloneGraph(_ node: Node?) -> Node? {
//  guard let node = node else { return nil }
//  var adjancencyList: [Int:[Int]] = [:]
//  createAdjacencyList(from: node, result: &adjancencyList)
//  var nodes: [Node] = []
//  
//  for item in adjancencyList {
//    nodes.append(Node(item.key))
//  }
//  nodes.sort(by: {$0.val < $1.val})
//  for item in adjancencyList {
//    nodes[item.key - 1].neighbors = item.value.map{ nodes[$0 - 1] }
//  }
//  
//  return nodes[node.val - 1]
//}
//
//func createAdjacencyList(from node: Node?, result: inout [Int:[Int]]){
//  guard let node = node, result[node.val] == nil else { return }
//  result[node.val] = node.neighbors.map{ $0?.val ?? 0 }.filter({ $0 != 0 })
//  for neighbor in node.neighbors {
//    createAdjacencyList(from: neighbor, result: &result)
//  }
//}

var visited: [Int: Node] = [:]
//BFS

func cloneGraphBFS(_ node: Node?) -> Node? {
  guard let node = node else { return nil }
  let cloneNode = Node(node.val)
  var visited = [Int: Node]()
  var queue = [Node]()
  visited[cloneNode.val] = cloneNode
  queue.append(node)
  
  while !queue.isEmpty {
    let node = queue.removeLast()
    for neighbor in node.neighbors {
      if let neighbor = neighbor {
        if visited[neighbor.val] == nil {
          visited[neighbor.val] = Node(neighbor.val)
          queue.append(neighbor)
        }
        
        visited[node.val]?.neighbors.append(visited[neighbor.val])
      }
    }
  }
  return cloneNode
}

//DFS

func cloneGraph(_ node: Node?) -> Node? {
  guard let node = node else { return nil }
  var visitedDict: [Int: Node] = [:]
  cloneGraphDFS(&visitedDict, [node])
  return visitedDict[node.val]
}

func cloneGraphDFS(_ visitedDict: inout [Int: Node], _ stack: [Node]) {
  guard !stack.isEmpty else { return }
  var stack = stack
  let currentNode = stack.popLast()!
  let currentClone = Node(currentNode.val)
  visitedDict[currentNode.val] = currentClone
  
  for neighbor in currentNode.neighbors {
    if let neighbor = neighbor, visitedDict[neighbor.val] == nil {
      stack.append(neighbor)
      cloneGraphDFS(&visitedDict, stack)
    }
  }
  
  for neighbor in currentNode.neighbors {
    if let neighbor = neighbor {
      currentClone.neighbors.append(visitedDict[neighbor.val]!)
    }
  }
}
