
public class ListNode {
  public var val: Int
  public var next: ListNode?
  public init() { self.val = 0; self.next = nil; }
  public init(_ val: Int) { self.val = val; self.next = nil; }
  public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}



func reverseList(_ head: ListNode?) -> ListNode? {
  guard let head = head else { return nil }
  var prev:ListNode? = nil
  var current = head
  var next: ListNode? = head.next
  
  while next != nil {
    current.next = prev
    prev = current
    current = next!
    next = next?.next
  }
  current.next = prev
  
  return current
}


