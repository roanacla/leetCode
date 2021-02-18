
public class ListNode {
  public var val: Int
  public var next: ListNode?
  public init() { self.val = 0; self.next = nil; }
  public init(_ val: Int) { self.val = val; self.next = nil; }
  public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}

func removeElements(_ head: ListNode?, _ val: Int) -> ListNode? {
  guard let head = head else { return nil }
  var leftNode: ListNode? = head
  var rightNode: ListNode? = head.next
  
  while rightNode != nil {
    if rightNode!.val == val {
      leftNode!.next = rightNode?.next
      rightNode = rightNode?.next
      continue
    }
    rightNode = rightNode?.next
    leftNode = leftNode?.next
  }
  
  return head.val == val ? head.next : head
}
