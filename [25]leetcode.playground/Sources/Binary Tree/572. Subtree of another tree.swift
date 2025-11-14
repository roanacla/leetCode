//
//  572. Subtree of another tree.swift
//  
//
//  Created by Roger Navarro Claros on 9/6/25.
//

public class Problem_572: Runner {
    // Don't implement the solution here.
    func isSubtree(_ root: TreeNode?, _ subRoot: TreeNode?) -> Bool {
        guard let root, let subRoot else { return false }
        var foundASubtree = false
        if root.val == subRoot.val {
            foundASubtree = isSameTree(root.left, subRoot.left) && isSameTree(root.right,subRoot.right)
        }
        if foundASubtree {
            return true
        } else {
            if isSubtree(root.left, subRoot) {
                return true
            }
            if isSubtree(root.right, subRoot) {
                return true
            }
        }
        return false
    }

    func isSameTree(_ p: TreeNode?, _ q: TreeNode?) -> Bool {
        if let p, let q {
            guard p.val == q.val else { return false }
            
            return isSameTree(p.left, q.left) && isSameTree(p.right, q.right)
        }
        return [p, q].compactMap {$0}.isEmpty
    }
    
    public func runCode() {
        print("572. Subtree of Another Tree")
        let root = buildTree([3, 4, 5, 1, 2])
        let subRoot = buildTree([4, 1, 2])
        print("\(isSubtree(root, subRoot) == true ? "Passed" : "Failed")")
    }
}
