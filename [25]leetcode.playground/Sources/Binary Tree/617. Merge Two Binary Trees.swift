//
//  Untitled.swift
//  
//
//  Created by Roger Navarro Claros on 9/5/25.
//

public class Problem_617: Runner {
    func mergeTrees(_ root1: TreeNode?, _ root2: TreeNode?) -> TreeNode? {
        var root1 = root1
        var root2 = root2
        
        if root1 == nil && root2 != nil {
            root1 = root2
            return root1
        } else if root1 != nil && root2 != nil {
            root1?.val += root2?.val ?? 0
        }
        root1?.left = mergeTrees(root1?.left, root2?.left)
        root1?.right = mergeTrees(root1?.right, root2?.right)
        
        return root1
    }
    
    public func runCode() {
        print("617. Merge Two Binary Trees")
        
        // Tree 1: [1,3,2,5]
        //     1
        //    / \
        //   3   2
        //  /
        // 5
        let t1 = TreeNode(1,
                          TreeNode(3, TreeNode(5), nil),
                          TreeNode(2))
        
        // Tree 2: [2,1,3,null,4,null,7]
        //     2
        //    / \
        //   1   3
        //    \    \
        //     4    7
        let t2 = TreeNode(2,
                          TreeNode(1, nil, TreeNode(4)),
                          TreeNode(3, nil, TreeNode(7)))
        
        // Expected merged tree:
        // [3,4,5,5,4,null,7]
        //     3
        //    / \
        //   4   5
        //  / \    \
        // 5   4    7
        
        if let merged = mergeTrees(t1, t2) {
            let passed =
                merged.val == 3 &&
                merged.left?.val == 4 &&
                merged.right?.val == 5 &&
                merged.left?.left?.val == 5 &&
                merged.left?.right?.val == 4 &&
                merged.right?.right?.val == 7
            
            print(passed ? "Passed" : "Failed")
        } else {
            print("Failed")
        }
    }
}

