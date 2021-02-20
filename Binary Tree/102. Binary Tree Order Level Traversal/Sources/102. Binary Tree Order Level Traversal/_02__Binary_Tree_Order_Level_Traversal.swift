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

//      [3,9,20,null,null,15,7]
func levelOrder(_ root: TreeNode?) -> [[Int]] {
  guard let root = root else { return [] }
  var levels: [[Int]] = []
  
  func helper(_ node: TreeNode, _ level: Int) {
    if levels.count == level {
      levels.append([])
    }
    levels[level].append(node.val)
    if node.left != nil {
      helper(node.left!, level + 1)
    }
    if node.right != nil {
      helper(node.right!, level + 1)
    }
  }
  
  helper(root, 0)
  
  return  levels
}

