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

var maxValue = 0

func diameterOfBinaryTree(_ root: TreeNode?) -> Int {
  guard let root = root else { return 0 }
  _ = helper(root)
  return maxValue - 1
}

func helper(_ root: TreeNode) -> Int {
  var leftDepth = 0
  var rightDepth = 0
  
  if root.left != nil {
    leftDepth += helper(root.left!)
  }
  if root.right != nil {
    rightDepth += helper(root.right!)
  }
  
  var maximum = leftDepth + rightDepth + 1
  
  if maximum > maxValue {
    maxValue = maximum
  }
  
  return max(leftDepth, rightDepth) + 1
}
