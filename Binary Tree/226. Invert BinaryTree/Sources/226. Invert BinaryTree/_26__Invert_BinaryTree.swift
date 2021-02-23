

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


class Solution {
  func invertTree(_ root: TreeNode?) -> TreeNode? {
    guard let root = root else { return nil }
    let rightTree = root.right
    root.right = root.left
    root.left = rightTree
    if root.left != nil {
      _ = invertTree(root.left)
    }
    if root.right != nil {
      _ = invertTree(root.right)
    }
    return root
    
  }
}

