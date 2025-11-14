//
//  226. invertTree.swift
//  
//
//  Created by Roger Navarro Claros on 9/6/25.
//

public class Problem_226: Runner {
    func invertTree(_ root: TreeNode?) -> TreeNode? {
        guard let root else { return nil }
        let tempLeft = root.left
        root.left = invertTree(root.right)
        root.right = invertTree(tempLeft)
        return root
    }
    
    func isSameTree(_ p: TreeNode?, _ q: TreeNode?) -> Bool {
        if let p, let q {
            guard p.val == q.val else { return false }
            
            return isSameTree(p.left, q.left) && isSameTree(p.right, q.right)
        }
        return [p, q].compactMap {$0}.isEmpty
    }
    
    public func runCode() {
        print("226. Invert Binary Tree")
        
        let test = invertTree(buildTree([4,2,7,1,3,6,9]))
        let expected = buildTree([4,7,2,9,6,3,1])
        
        print("\(isSameTree(test, expected) ? "Passed" : "Failed")")
    }
}
