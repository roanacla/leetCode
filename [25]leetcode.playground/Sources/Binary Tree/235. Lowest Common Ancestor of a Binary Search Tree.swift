//  235. Lowest Common Ancestor of a Binary Search Tree.swift
//  
//Given a binary search tree (BST), find the lowest common ancestor (LCA) node of two given nodes in the BST.
//
//According to the definition of LCA on Wikipedia: “The lowest common ancestor is defined between two nodes p and q as the lowest node in T that has both p and q as descendants (where we allow a node to be a descendant of itself).”

public class Problem_235: Runner {
    func lowestCommonAncestor(_ root: TreeNode?, _ p: TreeNode?, _ q: TreeNode?) -> TreeNode? {
        guard let root, let p, let q else { return nil }
        if (root.val > p.val) && (root.val > q.val) {
            return lowestCommonAncestor(root.left, p, q)
        } else if (root.val < p.val) && (root.val < q.val) {
            return lowestCommonAncestor(root.right, p, q)
        } else {
            return root
        }
    }
    
    public func runCode() {
        print("235 Lowest Common Ancestor of a Binary Search Tree")
        let node = TreeNode(6)
        let p = TreeNode(2)
        let q = TreeNode(8)
        node.left = p
        node.right = q
        node.left?.left = TreeNode(0)
        node.left?.right = TreeNode(4)
        node.left?.right?.left = TreeNode(3)
        node.left?.right?.right = TreeNode(5)
        
        let seven = TreeNode(7)
        let nine = TreeNode(9)
        node.right?.left = seven
        node.right?.right = nine
        
        print(lowestCommonAncestor(node, p, q)?.val == 6 ? "Passed": "Failed")
        print(lowestCommonAncestor(node, seven, nine)?.val == 8 ? "Passed": "Failed")
    }
}
