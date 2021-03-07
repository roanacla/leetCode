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

func flatten(_ root: TreeNode?) {
  guard let root = root else { return }
  
  
  flatten(root.left)
  if root.left != nil {
    let rightNode = root.right
    root.right = root.left!
    root.left = nil
    var newRight = root.right
    while newRight != nil {
      if newRight!.right == nil {
        newRight!.right = rightNode
        break
      }
      newRight = newRight!.right
    }
  }
  flatten(root.right)
}
