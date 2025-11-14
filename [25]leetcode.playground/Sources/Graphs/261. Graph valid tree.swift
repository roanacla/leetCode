//You have a graph of n nodes labeled from 0 to n - 1. You are given an integer n and a list of edges where edges[i] = [ai, bi] indicates that there is an undirected edge between nodes ai and bi in the graph.
//
//Return true if the edges of the given graph make up a valid tree, and false otherwise.
//


public class Problem_261: Runner {
    func validTree(_ n: Int, _ edges: [[Int]]) -> Bool {
        guard n - 1 == edges.count else { return false }
        
        var adjecencyList = Array(repeating: [Int](), count: n)
        for edge in edges {
            let edge: (start: Int, end: Int) = (edge[0], edge[1])
            adjecencyList[edge.start].append(edge.end)
            adjecencyList[edge.end].append(edge.start)
        }
        
        var visited: Set<Int> = []
        var parentOfNode = Array(repeating: -1, count: n)
        var queue: [Int] = [0]
        var dequeueIndex = 0
        visited.insert(0)
        
        
        while dequeueIndex < queue.count {
            let currentNode = queue[dequeueIndex]
            dequeueIndex += 1
            
            for neighbor in adjecencyList[currentNode] {
                if parentOfNode[currentNode] == neighbor {
                    continue
                }
                if visited.contains(neighbor) {
                    print("cycle detected")
                    return false
                }
                visited.insert(neighbor)
                parentOfNode[neighbor] = currentNode
                queue.append(neighbor)
            }
        }
        
        return visited.all
    }
    
    public func runCode() {
        let n = 5
        let edges = [[0,1],[0,2],[0,3],[1,4]]
        print("Problem 261. Graph valid trees")
        print(validTree(n, edges) == true ? "Passed" : "Failed")
    }
    
}
