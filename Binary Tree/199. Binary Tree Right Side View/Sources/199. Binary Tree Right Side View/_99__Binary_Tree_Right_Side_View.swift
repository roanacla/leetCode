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

var nodes: [Int] = []

func rightSideView(_ root: TreeNode?) -> [Int] {
  guard let root = root else { return [] }
  helper([(1,root)])
  return nodes
}

func helper(_ queue: [(Int,TreeNode)]) {
  guard !queue.isEmpty else { return }
  var queue = queue
  let tuple = queue.removeFirst()
  let level = tuple.0
  let node = tuple.1
  
  if let left = node.left {
    queue.append((level + 1,left))
  }
  if let right = node.right {
    queue.append((level + 1,right))
  }
  
  if let next = queue.first, next.0 != level {
    nodes.append(node.val)
  } else if queue.isEmpty {
    nodes.append(node.val)
  }
  helper(queue)
}

