struct _26__Convert_Binary_Search_Tree_to_Sorted_Doubly_Linked_List {
  var text = "Hello, World!"
}

public class Node {
  public var val: Int
  public var left: Node?
  public var right: Node?
  public init(_ val: Int) {
    self.val = val
    self.left = nil
    self.right = nil
  }
}

class Solution {
  var first: Node? = nil
  var last: Node? = nil
  
  func treeToDoublyList(_ root: Node?) -> Node? {
    helper(root)
    last?.right = first
    first?.left = last
    return first
  }
  
  func helper(_ node: Node?) {
    guard let node = node else { return }
    
    helper(node.left)
    if let last = last {
      last.right = node
      node.left = last
    } else {
      first = node
    }
    last = node
    helper(node.right)
  }
}
