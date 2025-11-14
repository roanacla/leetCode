//
//  treeHelpers.swift
//  
//
//  Created by Roger Navarro Claros on 9/5/25.
//

public func buildTree(_ values: [Int?]) -> TreeNode? {
    guard !values.isEmpty, let first = values[0] else { return nil }
    
    let root = TreeNode(first)
    var queue: [TreeNode] = [root]
    var index = 1
    
    while index < values.count {
        let current = queue.removeFirst()
        
        // Left child
        if index < values.count, let leftVal = values[index] {
            let leftNode = TreeNode(leftVal)
            current.left = leftNode
            queue.append(leftNode)
        }
        index += 1
        
        // Right child
        if index < values.count, let rightVal = values[index] {
            let rightNode = TreeNode(rightVal)
            current.right = rightNode
            queue.append(rightNode)
        }
        index += 1
    }
    
    return root
}
