public class ListNode {
  public var val: Int
  public var next: ListNode?
  public init() { self.val = 0; self.next = nil; }
  public init(_ val: Int) { self.val = val; self.next = nil; }
  public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}


func reorderList(_ head: ListNode?) {
  // find middle node and cut
  // the left part might be longer (+1) and this is exactly what we need
  var prev: ListNode?, curr = head, fast = head
  while fast != nil {
    prev = curr
    curr = curr?.next
    fast = fast?.next?.next
  }
  prev?.next = nil
  
  // reverse from middle node
  prev = nil
  while curr != nil {
    let next = curr?.next
    curr?.next = prev
    prev = curr
    curr = next
  }
  curr = prev
  
  // combine
  // no extra code needed for the case in which right part is longer (already avoided from above)
  var head = head
  while head != nil {
    let headNext = head?.next
    let currNext = curr?.next
    head?.next = curr
    curr?.next = headNext
    head = headNext
    curr = currNext
  }
}
