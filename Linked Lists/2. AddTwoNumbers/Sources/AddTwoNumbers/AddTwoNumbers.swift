
public class ListNode {
  public var val: Int
  public var next: ListNode?
  public init() { self.val = 0; self.next = nil; }
  public init(_ val: Int) { self.val = val; self.next = nil; }
  public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}


class Solution {
  func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
    let dummy = ListNode()
    var cur = dummy
    var l1 = l1
    var l2 = l2
    
    var carry: Int = 0
    
    while l1 != nil || l2 != nil || carry > 0 {
      let v1 = l1 != nil ? l1!.val : 0
      let v2 = l2 != nil ? l2!.val : 0
      
      var val = v1 + v2 + carry
      carry = val / 10
      val = val % 10
      cur.next = ListNode(val)
      
      // update ptrs
      cur = cur.next!
      l1 = l1?.next
      l2 = l2?.next
    }
    
    return dummy.next
  }
}
