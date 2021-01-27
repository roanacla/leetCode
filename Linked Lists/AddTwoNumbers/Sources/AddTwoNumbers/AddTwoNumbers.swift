

public class ListNode {
  public var val: Int
  public var next: ListNode?
  public init() { self.val = 0; self.next = nil; }
  public init(_ val: Int) { self.val = val; self.next = nil; }
  public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}


extension ListNode: Equatable {
  public static func == (lhs: ListNode, rhs: ListNode) -> Bool {
    var lnext: ListNode? = lhs
    var rnext: ListNode? = rhs
    while lnext != nil && rnext != nil {
      if lnext?.val != rnext?.val {
        return false
      }
      lnext = lnext?.next
      rnext = rnext?.next
    }
    return true
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
    if node.next == nil {
      lastElement = node      
    } else {
      var nextNode: ListNode? = node.next
      while nextNode != nil {
        nextNode = nextNode?.next
      }
      lastElement = nextNode
    }
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
  
  func removeFirst() -> ListNode? {
    guard !isEmpty() else { return nil }
    let result = firstElement
    if lastElement == firstElement {
      firstElement = nil
      lastElement = nil
    } else {
      firstElement = firstElement?.next
    }
    return result
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

func sum(listNode1: ListNode, listNode2: ListNode) -> ListNode {
  let linkedList1 = LinkedList(node: listNode1)
  let linkedList2 = LinkedList(node: listNode2)
  let result = LinkedList()
  var remainder = 0
  
  while !linkedList1.isEmpty() || !linkedList2.isEmpty() || remainder > 0 {
    let elem1 = linkedList1.removeFirst()
    let elem2 = linkedList2.removeFirst()
    
    let sum = (elem1?.val ?? 0) + (elem2?.val ?? 0) + remainder
    if  sum > 9 {
      remainder = 1
      result.append(node: ListNode(sum - 10))
    } else {
      result.append(node: ListNode(sum))
      remainder = 0
    }
    print(result.getLastElement()?.val)
  }
  
  return result.firstElement ?? ListNode(0)
}

func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
  if l1 == nil {
    return l2 == nil ? nil : l2
  } else {
    if l2 == nil { return l1 }
  }
  
  let l1 = l1!
  let l2 = l2!
  
  return sum(listNode1: l1, listNode2: l2)
}
