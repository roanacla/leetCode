//class Vertex {
//  let value: Int
//  let index: MatrixCoordinate
//
//  init(val: Int, index: MatrixCoordinate) {
//    value = val
//    self.index = index
//  }
//}
//
//extension Vertex: Equatable, Hashable {
//  static func == (lhs: Vertex, rhs: Vertex) -> Bool {
//    return lhs.index == rhs.index
//  }
//
//  func hash(into hasher: inout Hasher) {
//    hasher.combine(index.row)
//    hasher.combine(index.column)
//  }
//}
//
//typealias MatrixCoordinate = (column: Int, row: Int)
//
//class Edge {
//  let source: Vertex
//  let destination: Vertex
//
//  init(source: Vertex, destination: Vertex) {
//    self.source = source
//    self.destination = destination
//  }
//}
//
//class Graph {
//
//  var edges: [Edge] = []
//
//  var adjacencies: [Vertex:[Edge]] = [:]
//
//  init(matrix: [[Int]]) {
//    self.edges = getEdges(from: matrix)
//  }
//
//  func findStartingNodes() -> [Vertex] {
//    let result = edges.filter{ edge in
//      !edges.map{$0.destination}.contains(edge.source)
//    }
//    return Array(Set(result.map{ $0.source }))
//  }
//
//  //also pupulates adjacencies
//  private func getEdges(from matrix: [[Int]]) -> [Edge] {
//    var result: [Edge] = []
//    //
//
//    for row in 0..<matrix.count {
//      for column in 0..<matrix[row].count {
//        let temp = getNeighborsOf(coordinate: (column,row), from: matrix)
//        result += temp
//        self.adjacencies[Vertex(val: matrix[row][column], index: (column,row))] = temp
//      }
//    }
//
//
//    return result
//  }
//
//  private func getNeighborsOf(coordinate: MatrixCoordinate, from matrix: [[Int]]) -> [Edge] {
//    let row = coordinate.row
//    let column = coordinate.column
//    let currentValue = matrix[row][column]
//    var result: [Edge] = []
//    if row - 1 >= 0 {
//      let topValue = matrix[row - 1][column]
//      if topValue > currentValue {
//        result.append(Edge(source: Vertex(val: currentValue, index: (column,row) ),
//                           destination: Vertex(val: topValue, index:(column,row - 1 ))))
//      }
//    }
//    if row + 1 < matrix.count {
//      let bottomValue = matrix[row + 1][column]
//      if bottomValue > currentValue {
//        result.append(Edge(source: Vertex(val: currentValue, index: (column,row) ),
//                      destination: Vertex(val: bottomValue, index:(column,row + 1 ))))
//      }
//    }
//    if column - 1 >= 0 {
//      let leftValue = matrix[row][column - 1]
//      if leftValue > currentValue {
//        result.append(Edge(source: Vertex(val: currentValue, index: (column,row) ),
//                           destination: Vertex(val: leftValue, index:(column - 1 ,row ))))
//      }
//    }
//    if column + 1 < matrix[0].count {
//      let rightValue = matrix[row][column + 1]
//      if rightValue > currentValue {
//        result.append(Edge(source: Vertex(val: currentValue, index: (column,row) ),
//                      destination: Vertex(val: rightValue, index:(column + 1,row))))
//      }
//    }
//
//    return result
//  }
//
//  func longestPathFor(vertex: Vertex, max: inout Int, counter: inout Int) {
//    if max < counter {
//      max = counter
//    }
//    guard let edges = adjacencies[vertex] else { return }
//
//    for edge in edges {
//      counter += 1
//      longestPathFor(vertex: edge.destination, max: &max, counter: &counter)
//      counter -= 1
//    }
//  }
//
//}
//
//func longestIncreasingPath(_ matrix: [[Int]]) -> Int {
//  guard matrix.count != 0 else { return 0 }
//  let graph = Graph(matrix: matrix)
//  let startingVertex = graph.findStartingNodes()
//  var results = [Int]()
//  var result = 1
//  var counter = 1
//  if !startingVertex.isEmpty {
//    for vertex in startingVertex {
//      graph.longestPathFor(vertex: vertex , max: &result, counter: &counter)
//      results.append(result)
//      result = 0
//    }
//  }
//
//  return results.max() ?? 1
//}

//solution 2
let dirs = [[0,1],[1,0],[0,-1],[-1,0]]
var m = 0
var n = 0

func dfs(_ matrix: [[Int]], _ i: Int, _ j: Int, _ cache: inout [[Int]]) -> Int {
  if cache[i][j] != 0 { return cache[i][j] }
  for dir in dirs {
    let x = i + dir[0]
    let y = j + dir[1]
    
    if 0 <= x && x < m && 0 <= y && y < n && matrix[x][y] > matrix[i][j] {
      cache[i][j] = max(cache[i][j], dfs(matrix, x, y, &cache))
    }
  }
  cache[i][j] += 1
  return cache[i][j]
}

func longestIncreasingPath(_ matrix: [[Int]]) -> Int {
  guard matrix.count > 0 else { return 0 }
  m = matrix.count; n = matrix[0].count
  let row = [Int](repeating: 0, count: n)
  var cache: [[Int]] = [[Int]](repeating: row, count: m)
  var ans = 0
  
  for i in 0..<m {
    for j in 0..<n {
      ans = max(ans, dfs(matrix, i, j, &cache))
    }
  }
  return ans
}
