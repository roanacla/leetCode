 public class ListNode {
  public var val: Int
  public var next: ListNode?
  public init() { self.val = 0; self.next = nil; }
  public init(_ val: Int) { self.val = val; self.next = nil; }
  public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 }

 func isPalindrome(_ head: ListNode?) -> Bool {
  if head == nil { return true }
  
  var arrayOfNodes: [ListNode] = []
  var currentNode = head
  
  while currentNode != nil {
    arrayOfNodes.append(currentNode!)
    currentNode = currentNode?.next
  }
  
  currentNode = head
  for node in arrayOfNodes.reversed() {
    if currentNode!.val != node.val {
      return false
    }
    currentNode = currentNode?.next
  }
  
  return true
 }
