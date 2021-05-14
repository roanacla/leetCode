struct _14__Binary_Tree_Vertical_Order_Traversal {
  var text = "Hello, World!"
}


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

class Solution {
  var columnTable: [Int: [Int]] = [:]
  func verticalOrder(_ root: TreeNode?) -> [[Int]] {
    guard let root = root else { return [] }
    let queue = [(root, 0)]
    helperBFS(queue)
    
    let sortTableKey = columnTable.sorted {$0.key < $1.key}
    let new  = sortTableKey.map{$0.value}
    return new
  }
  
  func helperBFS(_ queue: [(TreeNode, Int)]) {
    guard !queue.isEmpty else { return }
    var queue = queue
    let tuple = queue.removeFirst()
    let node = tuple.0
    let column = tuple.1
    columnTable[column, default: []].append(node.val)
    if let left = node.left {
      queue.append((left, column - 1))
    }
    if let right = node.right {
      queue.append((right, column + 1))
    }
    helperBFS(queue)
  }
}
