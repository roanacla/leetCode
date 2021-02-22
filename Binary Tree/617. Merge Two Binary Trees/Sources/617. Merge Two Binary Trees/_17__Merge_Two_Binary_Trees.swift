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

extension TreeNode: Equatable {
  public static func == (lhs: TreeNode, rhs: TreeNode) -> Bool {
    print("\(lhs.val) \(rhs.val)")
    return lhs.val == rhs.val && lhs.left == rhs.left && lhs.right == rhs.right
  }
  
  
}

func mergeTrees(_ root1: TreeNode?, _ root2: TreeNode?) -> TreeNode? {
      guard let root1 = root1 else { return root2 != nil ? root2 : nil }
      guard let root2 = root2 else { return root1 }
      
      root1.val = root1.val + root2.val
      root1.left = mergeTrees(root1.left, root2.left)
      root1.right = mergeTrees(root1.right, root2.right)
      
      return root1
    }
