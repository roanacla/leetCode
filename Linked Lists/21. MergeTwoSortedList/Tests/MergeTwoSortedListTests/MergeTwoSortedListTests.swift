import XCTest
@testable import MergeTwoSortedList

final class MergeTwoSortedListTests: XCTestCase {
  var l1 = ListNode()
  var l2 = ListNode()
  
  override func setUp() {
    l1 = ListNode(1)
    l1.next = ListNode(2)
    l1.next?.next = ListNode(4)
    
    l2 = ListNode(1)
    l2.next = ListNode(3)
    l2.next?.next = ListNode(4)
  }
  
  func testExample() {
    let linkedList = LinkedList(node: ListNode(1))
    linkedList.addNode(ListNode(1))
    linkedList.addNode(ListNode(2))
    linkedList.addNode(ListNode(3))
    linkedList.addNode(ListNode(4))
    linkedList.addNode(ListNode(4))
    let result = mergeTwoLists(l1, l2)
    XCTAssertEqual(linkedList.firstNode, result)
  }
  
  static var allTests = [
    ("testExample", testExample),
  ]
}
