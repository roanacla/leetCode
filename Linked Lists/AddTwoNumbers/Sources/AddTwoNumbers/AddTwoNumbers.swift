

public class ListNode {
  public var val: Int
  public var next: ListNode?
  public init() { self.val = 0; self.next = nil; }
  public init(_ val: Int) { self.val = val; self.next = nil; }
  public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}


extension ListNode: Equatable {
  public static func == (lhs: ListNode, rhs: ListNode) -> Bool {
      return getNumber(listNode: lhs) == getNumber(listNode: rhs)
  }
}

public class LinkedList {
  var firstElement: ListNode?
  var lastElement: ListNode?
  
  init() {
    firstElement = nil
    lastElement = nil
  }
  
  init(node: ListNode) {
    firstElement = node
    lastElement = node
  }
  
  func append(node: ListNode) {
    if isEmpty() {
      firstElement = node
      lastElement = node
    } else {
      lastElement?.next = node
      lastElement = lastElement?.next!
    }
  }
  
  func getLastElement() -> ListNode? {
    return lastElement
  }
  
  func isEmpty() -> Bool {
    return firstElement == nil ? true : false
  }
}


func getNumber(listNode: ListNode) -> Int {
  var nextNode: ListNode? = listNode
  var string: String = ""
  while nextNode != nil {
    string += String(nextNode!.val)
    nextNode = nextNode!.next
  }
  
  return Int(String(string.reversed()))!
}

func convertToLinkedList(number: Int) -> ListNode {
  let string = String(number)
  let reversed = string.reversed()
  let linkedList = LinkedList()
  for digit in reversed {
    linkedList.append(node: ListNode(Int(String(digit))!))
  }
  return linkedList.firstElement!
}

func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
  if l1 == nil {
    return l2 == nil ? nil : l2
  } else {
    if l2 == nil { return l1 }
  }
  
  let l1 = l1!
  let l2 = l2!
  
  let total = getNumber(listNode: l1) + getNumber(listNode: l2)
  
  return convertToLinkedList(number: total)
}
