public class ListNode {
  public var val: Int
  public var next: ListNode?
  public init() { self.val = 0; self.next = nil; }
  public init(_ val: Int) { self.val = val; self.next = nil; }
  public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}

func mergeTwoLists(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
  guard l1 != nil else { return l2 ?? nil}
  guard l2 != nil else { return l1 ?? nil}
  var xPointer = l1
  var yPointer = l2
  
  var resPointer: ListNode? = ListNode(-101)
  let result = resPointer
  
  while xPointer != nil && yPointer != nil {
    let isXGreater = xPointer!.val > yPointer!.val ? true : false
    if isXGreater {
      resPointer?.next = ListNode(yPointer!.val)
      yPointer = yPointer?.next
    } else {
      resPointer?.next = ListNode(xPointer!.val)
      xPointer = xPointer?.next
    }
    resPointer = resPointer?.next
  }
  resPointer?.next = xPointer ?? yPointer
  
  
  return result?.next
  
}
