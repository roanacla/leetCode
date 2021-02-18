
public class ListNode {
  public var val: Int
  public var next: ListNode?
  public init(_ val: Int) {
    self.val = val
    self.next = nil
  }
}

func hasCycle(_ head: ListNode?) -> Bool {
  guard let head = head else { return false }
  var slowPointer: ListNode? = head
  var fastPointer: ListNode? = head.next
  
  while fastPointer != nil {
    //fix fastPointer Optional
    guard let slow = slowPointer, let fast = fastPointer else { return false }
    if slow === fast {
      return true
    }
    slowPointer = slow.next
    fastPointer = fast.next?.next
  }
  
  return false
}
