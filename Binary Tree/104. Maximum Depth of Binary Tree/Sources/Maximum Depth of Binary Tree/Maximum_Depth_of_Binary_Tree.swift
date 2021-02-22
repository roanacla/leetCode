

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

extension TreeNode {
  func traverseInOrder(max: inout Int, current: inout Int) {
    if let left = left {
      current += 1
      max = current > max ? current : max
      left.traverseInOrder(max: &max, current: &current)
    }
    if let right = right {
      if left == nil {
        current += 1
      }
      max = current > max ? current : max
      right.traverseInOrder(max: &max, current: &current)
    }
    if left != nil || right != nil {
      current -= 1
    }
  }
}

func maxDepth(_ root: TreeNode?) -> Int {
  if let treeNode = root {
    var max = 1
    var current = 1
    treeNode.traverseInOrder(max: &max, current: &current)
    return max
  }
  return 0
}

