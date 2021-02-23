public class TreeNode {
  public var val: Int
  public var left: TreeNode?
  public var right: TreeNode?
  public init(_ val: Int) {
    self.val = val
    self.left = nil
    self.right = nil
  }
}

extension TreeNode: Equatable {
  public static func == (lhs: TreeNode, rhs: TreeNode) -> Bool {
    return lhs.val == rhs.val && lhs.left == rhs.left && lhs.right == rhs.right
  }
}

func isSubtree(_ s: TreeNode?, _ t: TreeNode?) -> Bool {
  guard let s = s, let t = t else { return false }
  var result = false
  if s.val == t.val {
    result = s == t
  }
  if result == false {
    if isSubtree(s.left,t) {
      result = true
    } else if isSubtree(s.right, t) {
      result = true
    }
  }
  
  
  return result
}
