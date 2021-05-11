struct _57__Binary_Tree_Paths {
    var text = "Hello, World!"
}

 
public class TreeNode {
  public var val: Int
  public var left: TreeNode?
  public var right: TreeNode?
  public init() { self.val = 0; self.left = nil; self.right = nil; }
  public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
  public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
    self.val = val
    self.left = left
    self.right = right
  }
}
 

// Traverse using pre-order method
// Each recursive call should have its current path as input
// The base case is if node is a leaf

class Solution {
    var ans: [String] = []
    
    func binaryTreePaths(_ root: TreeNode?) -> [String] {
        guard let root = root else { return ans }
        helper(root, "")
        return ans
    }
    
    func helper(_ node: TreeNode?, _ currentPath: String ) {
        guard let node = node else { return }
        var currentPath = currentPath
        currentPath += currentPath.isEmpty ? "\(node.val)" : "->\(node.val)"
        
        if node.left == nil && node.right == nil {
            ans.append(currentPath)
        }
        if node.left != nil {
            helper(node.left, currentPath)
        }
        if node.right != nil {
            helper(node.right, currentPath)
        }
    }
}
