
public class LinkedList {
  public var firstNode: ListNode?
  public var lastNode: ListNode?
  
  init () {
    firstNode = nil
    lastNode = nil
  }
  init(node: ListNode) {
    firstNode = node
    lastNode = node
  }
  
  func getfirst() -> ListNode? {
    return firstNode
  }
  
  func isEmpty() -> Bool {
    return firstNode == nil ? true : false
  }
  
  func addNode(_ node: ListNode?) {
    if isEmpty() {
      firstNode = node
      lastNode = node
    } else {
      lastNode?.next = node
      lastNode = lastNode?.next
    }
  }
  
}
public class ListNode {
  public var val: Int
  public var next: ListNode?
  public init() { self.val = 0; self.next = nil; }
  public init(_ val: Int) { self.val = val; self.next = nil; }
  public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}

extension ListNode: Equatable {
  public static func == (lhs: ListNode, rhs: ListNode) -> Bool {
    return lhs.val == rhs.val && lhs.next == rhs.next
  }
  
  
}


func mergeTwoLists(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
  guard let node1 = l1, let node2 = l2 else {
    if l1 == nil && l2 == nil { return nil }
    else if l1 == nil { return l2 }
    else { return l1 }
  }
  let linkedList = LinkedList()
  var currentL1: ListNode? = node1
  var currentL2: ListNode? = node2
  
  while currentL1 != nil && currentL2 != nil {
    let lowestValue = min(currentL1!.val, currentL2!.val)
    linkedList.addNode(ListNode(lowestValue))
    let temp = currentL1!.val > currentL2!.val ? currentL1 : currentL1!.next
    currentL2 = currentL1!.val > currentL2!.val ? currentL2!.next : currentL2
    currentL1 = temp
  }
  
  if currentL1 == nil {
    linkedList.addNode(currentL2)
  } else {
    linkedList.addNode(currentL1)
  }
  
  return linkedList.getfirst()
}

