public class Node {
  public var val: Int
  public var next: Node?
  public var random: Node?
  public init(_ val: Int) {
    self.val = val
    self.next = nil
    self.random = nil
  }
}

struct _38__Copy_List_with_Random_Pointer {
  var text = "Hello, World!"
}

func copyRandomList(_ head: Node?) -> Node? {
  guard let head = head else { return nil }
  
  //traverse linked list and interwine with cloned copies
  var pointer: Node? = head
  while pointer != nil {
    let clone = Node(pointer!.val)
    clone.next = pointer?.next
    pointer?.next = clone
    pointer = clone.next
  }
  // traverse intertwined linked list to refer cloneCopies to cloneRandoms
  pointer = head
  
  while pointer != nil {
    pointer?.next?.random = pointer?.random?.next
    pointer = pointer?.next?.next
  }
  
  // traverse intertwined to separate original from copy
  pointer = head
  let cloneHead = head.next
  var cPointer = cloneHead
  while pointer != nil {
    pointer?.next = cPointer?.next
    cPointer?.next = pointer?.next?.next
    pointer = pointer?.next
    cPointer = cPointer?.next
  }
  
  return cloneHead
}
