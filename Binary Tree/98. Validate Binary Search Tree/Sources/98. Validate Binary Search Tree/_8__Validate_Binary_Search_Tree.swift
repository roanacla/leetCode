

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
  func isValidBST(_ root: TreeNode?) -> Bool {
    guard let root = root else { return false }
    return helper(root, min: Int.min, max: Int.max)
  }
  
  func helper(_ node: TreeNode?, min: Int, max: Int) -> Bool {
    guard let node = node else { return true }
    if node.val <= min || node.val >= max { return false }
    return helper(node.left, min: min, max: node.val) &&
      helper(node.right, min: node.val, max: max)
  }
}
