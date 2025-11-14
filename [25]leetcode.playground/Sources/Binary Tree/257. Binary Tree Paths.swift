//
//  257. Binary Tree Paths.swift
//  
//
//  Created by Roger Navarro Claros on 10/1/25.
//

public class Problem_257: Runner {
    func binaryTreePaths(_ root: TreeNode?) -> [String] {
        return binaryTreePaths(root, "")
    }
    
    func binaryTreePaths(_ root: TreeNode?, _ path: String) -> [String] {
        guard let root else { return [] }
        var result: [String] = []
        var path = path + "\(root.val)"
        if root.left == nil && root.right == nil {
            return [path]
        }
        path += "->"
        if let left = root.left {
            result += binaryTreePaths(left, path)
        }
        if let right = root.right {
            result += binaryTreePaths(right, path)
        }
        return result
    }
    
    public func runCode() {
        print("257. Binary Tree Paths")
        
        // Build tree: [1,2,3,null,5]
        let root = TreeNode(1)
        root.left = TreeNode(2)
        root.right = TreeNode(3)
        root.left?.right = TreeNode(5)
        
        let expected = ["1->2->5","1->3"]
        let result = binaryTreePaths(root)
        print("\(result == expected ? "Passed" : "Failed")")
    }
}
