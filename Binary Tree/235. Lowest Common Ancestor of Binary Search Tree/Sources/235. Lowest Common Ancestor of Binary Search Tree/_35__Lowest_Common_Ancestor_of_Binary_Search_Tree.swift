
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


func lowestCommonAncestor(_ root: TreeNode?, _ p: TreeNode?, _ q: TreeNode?) -> TreeNode? {
  guard let root = root, let p = p, let q = q else { return nil }
  
  if root.val < p.val && root.val < q.val {
    return lowestCommonAncestor(root.right, p, q)
  } else if root.val > p.val && root.val > q.val {
    return lowestCommonAncestor(root.left, p, q)
  } else {
    return root
  }
  return nil
}


