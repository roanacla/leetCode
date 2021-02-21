

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

//Best solution

extension TreeNode: Equatable {
  public static func == (lhs: TreeNode, rhs: TreeNode) -> Bool {
    return lhs.val == rhs.val && lhs.left == rhs.left && lhs.right == rhs.right
  }
}

func isSameTree(_ p: TreeNode?, _ q: TreeNode?) -> Bool {
  return p == q
}

//Second best

extension TreeNode {
  func levelOrderTraversal(operation: (Int?) -> ()) {
    operation(val)
    if left != nil {
      left?.levelOrderTraversal(operation: operation)
    } else {
      operation(nil)
    }
    if right != nil {
      right?.levelOrderTraversal(operation: operation)
    } else {
      operation(nil)
    }
  }
}

func isSameTree2(_ p: TreeNode?, _ q: TreeNode?) -> Bool {
  return convertToArray(from: p) == convertToArray(from: q)
}

func convertToArray(from treeNode: TreeNode?) -> [Int?] {
  guard let treeNode = treeNode else { return [] }
  var array: [Int?] = []
  treeNode.levelOrderTraversal(operation: { value in
    array.append(value)
  })
  
  return array
}

