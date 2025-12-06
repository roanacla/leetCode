//
//  110. Same tree.swift
//  Given the roots of two binary trees p and q, write a function to check if they are the same or not.

//Two binary trees are considered the same if they are structurally identical, and the nodes have the same value.

public class Problem_100: Runner {
    func isSameTree(_ p: TreeNode?, _ q: TreeNode?) -> Bool {
        if let p, let q {
            guard p.val == q.val else { return false }
            
            return isSameTree(p.left, q.left) && isSameTree(p.right, q.right)
        }
        return [p, q].compactMap {$0}.isEmpty
    }
    
    func isSameTreeTwo(_ p: TreeNode?, _ q: TreeNode?) -> Bool {
        guard p == nil && q == nil else {
            if let p, let q, p.val == q.val {
                return isSameTree(p.left, q.left) && isSameTree(p.right, q.right)
            }
            return false
        }
        return true
    }
    
    public func runCode() {
        print("100. Same Tree")
    }
}
