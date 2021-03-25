// Using Graph theory (indegree and outdegree) in only one array
// Most efficient than using an adjacency List

func findJudge(_ N: Int, _ trust: [[Int]]) -> Int {
  var counter = [Int](repeating: 0, count: N)
  for relation in trust {
    counter[relation[1] - 1] += 1
    counter[relation[0] - 1] -= 1
  }
  if let index = counter.firstIndex(where: {$0 == N - 1}) {
    return index + 1
  }
  return -1
}

// Using Graph (less efficient)

var graph: [Int: [Int]] = [:]
    
func populateAdjacencyList(_ edges: [[Int]]) {
    for edge in edges {
        graph[edge[0], default:[]].append(edge[1])
    }
}

func findJudgeUsingGraph(_ N: Int, _ trust: [[Int]]) -> Int {
    if N == 1 && trust.isEmpty { return 1 }
    populateAdjacencyList(trust)
    guard  graph.keys.count == N - 1 else { return -1 }
    var judges: [Int] = []
    let keySet = Set<Int>(graph.keys)
    for people in 1...N {
        if !keySet.contains(people) {
            judges.append(people)
        }
    }
    guard judges.count == 1 else { return -1 }
    let judge = judges[0]
    for (_, value) in graph {
        guard value.contains(judge) else { return -1 }
    }
    return judge
}
