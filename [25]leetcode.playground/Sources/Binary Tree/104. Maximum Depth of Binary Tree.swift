//  Untitled.swift
//
//
//  Created by Roger Navarro Claros on 9/5/25.
//

public class Problem_104: Runner {
    func maxDepth(_ root: TreeNode?) -> Int {
        //DFS - post order traversal -> right, left, head
        guard root != nil else { return 0 }
        var level = 1
        level += max(maxDepth(root?.left), maxDepth(root?.right))
        return level
    }
    
    func maxDepthTwo(_ root: TreeNode?) -> Int {
        guard let root else { return 0 }
        let left = maxDepth(root.left)
        let right = maxDepth(root.right)
        var result = max(left, right)
        result += 1
        return result
    }
    
    public func runCode() {
        print("104. Maximum Depth of Binary Tree")
        var rootNode = buildTree([3,9,20,nil,nil,15,7])
        print(maxDepth(rootNode) == 3 ? "Passed" : "Failed")
        rootNode = buildTree([1,nil,2])
        print(maxDepth(rootNode) == 2 ? "Passed" : "Failed")
    }
}

