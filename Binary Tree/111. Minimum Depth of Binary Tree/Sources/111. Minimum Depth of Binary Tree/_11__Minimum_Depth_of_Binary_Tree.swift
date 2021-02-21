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

func minDepth(_ root: TreeNode?) -> Int {
  guard let root = root else { return 0 }
  let level = 1
  var minLevel = Int.max
  minDepth(root, level, &minLevel)
  return minLevel
}

func minDepth(_ node: TreeNode, _ level: Int, _ minLevel: inout Int) {
  var level = level
  if node.left == nil && node.right == nil {
    if minLevel > level {
      minLevel = level
    }
    return
  }
  level += 1
  if node.left != nil && level < minLevel {
    minDepth( node.left!, level, &minLevel)
  }
  if node.right != nil && level < minLevel {
    minDepth( node.right!, level, &minLevel)
  }
}
