struct _85__Is_Graph_Bipartite_ {
    var text = "Hello, World!"
}
class Solution {
    
    func isBipartite(_ graph: [[Int]]) -> Bool {
        var groups = Array(repeating: 0, count: graph.count)
        
        var first = 0
        for node in 0..<graph.count {
            if groups[node] != 0 { continue }
            groups[node] = 1
            if !correctGroups(graph, node, &groups) { return false }
        }

        return true
    }

    func correctGroups(_ graph: [[Int]], _ node: Int, _ groups: inout [Int]) -> Bool {
        let curGroup = groups[node]
        for neighbor in graph[node] {
            if groups[neighbor] == curGroup {
                return false
            } else if groups[neighbor] == 0 { // unprocessed
                groups[neighbor] = -curGroup
                if !correctGroups(graph, neighbor, &groups) { return false }
            }
        }
        return true
    }
}
