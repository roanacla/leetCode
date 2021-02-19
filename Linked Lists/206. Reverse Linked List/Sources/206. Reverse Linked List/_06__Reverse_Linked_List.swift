
public class ListNode {
  public var val: Int
  public var next: ListNode?
  public init() { self.val = 0; self.next = nil; }
  public init(_ val: Int) { self.val = val; self.next = nil; }
  public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}



func reverseList(_ head: ListNode?) -> ListNode? {
  guard let head = head else { return nil }
  var leftPointer: ListNode? = head
  var rightPointer: ListNode? = head.next
  var isFirst = true
  
  while rightPointer != nil {
    let oldRightNext = rightPointer?.next
    let oldRight = rightPointer
    rightPointer?.next = leftPointer
    if isFirst {
      leftPointer?.next = nil
      isFirst = false
    }
    rightPointer = oldRightNext
    leftPointer = oldRight
  }
  return leftPointer
}


