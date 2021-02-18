 public class ListNode {
  public var val: Int
  public var next: ListNode?
  public init() { self.val = 0; self.next = nil; }
  public init(_ val: Int) { self.val = val; self.next = nil; }
  public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 }
 
 
 func middleNode(_ head: ListNode?) -> ListNode? {
  guard let head = head else { return nil }
  var slowerNode = head
  var fasterNode: ListNode? = head.next
  
  while fasterNode != nil {
    slowerNode = slowerNode.next!
    fasterNode = fasterNode!.next?.next
  }
  
  return slowerNode
 }
 
