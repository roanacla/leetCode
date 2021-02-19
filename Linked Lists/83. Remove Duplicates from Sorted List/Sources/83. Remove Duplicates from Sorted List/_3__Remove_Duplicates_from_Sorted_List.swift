public class ListNode {
  public var val: Int
  public var next: ListNode?
  public init() { self.val = 0; self.next = nil; }
  public init(_ val: Int) { self.val = val; self.next = nil; }
  public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}


func deleteDuplicates(_ head: ListNode?) -> ListNode? {
  guard let head = head else { return nil }
  var leftPointer: ListNode? = head
  var rightPointer: ListNode? = head.next
  var nodeSet = Set<Int>()
  
  while rightPointer != nil {
    if nodeSet.contains(rightPointer!.val) {
      leftPointer?.next = rightPointer?.next
    } else {
      nodeSet.insert(rightPointer!.val)
      leftPointer = leftPointer?.next
    }
    rightPointer = rightPointer?.next
  }
  
  return nodeSet.contains(head.val) ? head.next : head
}
