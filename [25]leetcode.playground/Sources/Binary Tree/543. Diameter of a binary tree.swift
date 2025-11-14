//
//  543. Diameter of a binary tree.swift
//  
//
//  Created by Roger Navarro Claros on 9/5/25.
//

public class Problem_543: Runner {
    func diameterOfBinaryTree(_ root: TreeNode?) -> Int {
        guard let root else { return 0 }
        
        var nodeDiameter = 0
        let leftHeight = maxHeight(root.left, &nodeDiameter)
        let rightHeight = maxHeight(root.right, &nodeDiameter)
        
        return max((leftHeight + rightHeight), nodeDiameter)
    }
    
    func maxHeight(_ root: TreeNode?, _ diameter: inout Int) -> Int{
        guard let root else { return 0 }
        
        let leftHeight = maxHeight(root.left, &diameter)
        let rightHeight = maxHeight(root.right, &diameter)
        if diameter < leftHeight + rightHeight {
            diameter = leftHeight + rightHeight            
        }
        return max(leftHeight + 1, rightHeight + 1)
    }
    
    
    
    public func runCode() {
        print("543. Diameter of Binary Tree")
        let root = TreeNode(1)
        root.left = TreeNode(2)
        root.right = TreeNode(3)
        root.left?.left = TreeNode(4)
        root.left?.right = TreeNode(5)
        
        print("\(diameterOfBinaryTree(root) == 3 ? "Passed" : "Failed")")
    }
}
