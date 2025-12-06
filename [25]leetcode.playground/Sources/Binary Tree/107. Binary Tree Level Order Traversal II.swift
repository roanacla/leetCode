//
//  107. Binary Tree Level Order Traversal II.swift
//
//
//  Created by Roger Navarro Claros on 12/5/25.
//
func levelOrderBottom(_ root: TreeNode?) -> [[Int]] {
    guard let root else { return [] }
    var cLevel: [TreeNode] = [root]
    var result: [[Int]] = []
    
    while !cLevel.isEmpty {
        // result.insert([], at: 0)
        var nextLevel: [TreeNode] = []
        var valuesInLevel: [Int] = []
        for node in cLevel {
            valuesInLevel.append(node.val)
            if let left = node.left {
                nextLevel.append(left)
            }
            if let right = node.right {
                nextLevel.append(right)
            }
        }
        result.insert(valuesInLevel, at: 0)
        cLevel = nextLevel
    }
    
    return result
}
