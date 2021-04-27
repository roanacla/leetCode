public class ListNode {
  public var val: Int
  public var next: ListNode?
  public init() { self.val = 0; self.next = nil; }
  public init(_ val: Int) { self.val = val; self.next = nil; }
  public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}

func mergeTwoLists(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
  var l1 = l1
  var l2 = l2
  
  let preHead = ListNode(-1)
  var prev = preHead
  
  while l1 != nil && l2 != nil {
      if l1!.val <= l2!.val {
          prev.next = l1
          l1 = l1!.next
      } else {
          prev.next = l2
          l2 = l2!.next
      }
      prev = prev.next!
  }
  
  prev.next = l1 == nil ? l2 : l1
  
  return preHead.next
  
}
