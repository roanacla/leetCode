
public class ListNode {
  public var val: Int
  public var next: ListNode?
  public init(_ val: Int) {
    self.val = val
    self.next = nil
  }
}

func hasCycle(_ head: ListNode?) -> Bool {
  guard head != nil, head?.next != nil else { return false }
  var slowPointer = head
  var fastPointer = head?.next
  
  while slowPointer !== fastPointer {
    slowPointer = slowPointer?.next
    fastPointer = fastPointer?.next?.next
    if fastPointer == nil { return false }
  }
  
  return true
}
