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

func hasPathSum(_ root: TreeNode?, _ targetSum: Int) -> Bool {
  guard let root = root else { return false }
  var currentSum = 0
  return hasPathSum(root, targetSum, &currentSum)
}

func hasPathSum(_ root: TreeNode, _ targetSum: Int, _ currentSum: inout Int) -> Bool {
  currentSum += root.val
  
  //base case
  if currentSum == targetSum && root.left == nil && root.right == nil {
    return true
  }
  // recursion section
  if root.left != nil {
    if hasPathSum(root.left!, targetSum, &currentSum) {
      return true
    }
  }
  if root.right != nil {
    if hasPathSum(root.right!, targetSum, &currentSum ) {
      return true
    }
  }
  currentSum -= root.val
  
  return false
}
