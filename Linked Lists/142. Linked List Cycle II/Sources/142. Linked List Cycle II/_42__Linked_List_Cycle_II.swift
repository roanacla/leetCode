public class ListNode {
  public var val: Int
  public var next: ListNode?
  public init(_ val: Int) {
    self.val = val
    self.next = nil
  }
}


// traverse until fastPointer is equal to nil or equal to slowPointer

class Solution {
  
  func detectCycle(_ head: ListNode?) -> ListNode? {
    guard let head = head else { return nil }
    guard let next = head.next else  { return nil }
    var slowPointer: ListNode? = next
    var fastPointer: ListNode? = next.next
    
    while fastPointer != nil && slowPointer != nil  && fastPointer !== slowPointer {
      slowPointer = slowPointer?.next
      fastPointer = fastPointer?.next?.next
    }
    
    guard var inCycle = fastPointer else { return nil }
    var outCycle = head
    while outCycle !== inCycle  {
      outCycle = outCycle.next!
      inCycle = inCycle.next!
    }
    
    return outCycle
    
  }
}
