//
//  Out1. BFS graph.swift
//  
//
//  Created by Roger Navarro Claros on 9/3/25.
//

public class Problem_o_1: Runner {
    
    public func BFS(_ nodes: Int, _ edges: [[Int]]) -> [Int] {
        // create adjecency list
        var adjecencyList: [[Int]] = Array(repeating: [], count: nodes)
        for edge in edges {
            adjecencyList[edge[0]].append(edge[1])
            adjecencyList[edge[1]].append(edge[0])
        }
        var queue: [Int] = []
        var dequeueIndex = 0
        queue.append(0)
        var visited: Set<Int> = [0]
        var result: [Int] = [0]
        
        while dequeueIndex < queue.count {
            let node = queue[dequeueIndex]
            dequeueIndex += 1
            
            for neighbor in adjecencyList[node] {
                if !visited.contains(neighbor) {
                    queue.append(neighbor)
                    result.append(neighbor)
                    visited.insert(neighbor)
                }
            }
            
        }
        return result
    }
    public func runCode() {
        print("Problem Outside 1")
        print(BFS(8, [[0, 1], [0, 3], [0, 6], [1,4], [1,5], [6, 4], [5,2], [5,3], [2, 7]]) == [0,1,3,6,4,5,2,7] ? "Passed" : "Failed")
    }
}
