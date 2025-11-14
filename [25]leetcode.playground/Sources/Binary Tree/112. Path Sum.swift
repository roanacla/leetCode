//
//  112. Path Sum.swift
//  
//
//  Created by Roger Navarro Claros on 9/4/25.
//
//Given the root of a binary tree and an integer targetSum, return true if the tree has a root-to-leaf path such that adding up all the values along the path equals targetSum.
//
//A leaf is a node with no children.

public class Problem_112: Runner {
    func hasPathSum(_ root: TreeNode?, _ targetSum: Int) -> Bool {
        guard let root else { return false }
        if [root.left, root.right].compactMap({ $0 }).isEmpty {
            if targetSum == root.val {
                return true
            }
        }
        if hasPathSum(root.left, targetSum - root.val) || hasPathSum(root.right, targetSum - root.val) {
            return true
        }
        
        return false
    }
    
    public func runCode() {
        print("112. Path Sum")
        var treeNode = buildTree([5,4,8,11,nil,13,4,7,2,nil,nil,nil,1])
        print(hasPathSum(treeNode, 22) == true ? "Passed" : "Failed")
        
        treeNode = buildTree([1,2,3])
        print(hasPathSum(treeNode, 5) == false ? "Passed" : "Failed")
    }
}
