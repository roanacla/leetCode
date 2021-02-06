

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
  var result: TreeNode? = nil
  _ = findCommonAncestor(in: root, pVal: p.val, qVal: q.val, resultNode: &result)
  return result
}

func findCommonAncestor(in node: TreeNode?, pVal: Int, qVal: Int, resultNode: inout TreeNode?) -> Bool{
  guard resultNode == nil else { return false }
  guard let node = node else { return false }
  
  let leftAns = findCommonAncestor(in: node.left, pVal: pVal, qVal: qVal, resultNode: &resultNode)
  let rightAns = findCommonAncestor(in: node.right, pVal: pVal, qVal: qVal, resultNode: &resultNode)
  
  if leftAns && rightAns || ((leftAns || rightAns) && (node.val == qVal || node.val == pVal)) {
    resultNode = node
    return false
  }
  return leftAns || rightAns || node.val == qVal || node.val == pVal ? true : false
}


