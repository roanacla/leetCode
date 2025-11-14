//
//  Untitled.swift
//  
//
//  Created by Roger Navarro Claros on 9/4/25.
//

public class Problem_323: Runner {
//    [0, [1,2]]
//    [1, [0,2]]
//    [2, [1]]
//    [3, [4]]
//    [4, [3]]
    func countComponents(_ n: Int, _ edges: [[Int]]) -> Int {
        let adjecencyList: [[Int]] = {
            var list: [[Int]] = Array(repeating: [], count: n)
            for edge in edges {
                let a = edge[0]; let b = edge[1]
                list[a].append(b)
                list[b].append(a)
            }
            return list
        }()
        var adjecencyListIndex = 0 // node in graph
        var visitedInGraph: Set<Int> = []
        var componentCounter = 0
        
        while adjecencyListIndex < adjecencyList.count {
            
            if !visitedInGraph.contains(adjecencyListIndex) {
                visitedInGraph.insert(adjecencyListIndex)
                
                var queue: [Int] = [adjecencyListIndex]
                var dequeueIndex = 0
                
                while dequeueIndex < queue.count {
                    let currentNode = queue[dequeueIndex]
                    for neighbor in adjecencyList[currentNode] {
                        if !visitedInGraph.contains(neighbor) {
                            queue.append(neighbor)
                            visitedInGraph.insert(neighbor)
                        }
                    }
                    dequeueIndex += 1
                }
                componentCounter += 1
            }
            adjecencyListIndex += 1
        }
        
        return componentCounter
    }
    
    public func runCode() {
        print("Problem 323. Number of connected components in an Undirected Graph")
        var n = 5
        var edges = [[0,1],[1,2],[3,4]]
        print(countComponents(n, edges) == 2 ? "Passed" : "Failed")
        n = 5
        edges = [[0,1],[1,2],[2,3],[3,4]]
        print(countComponents(n, edges) == 1 ? "Passed" : "Failed")
    }
    
}
