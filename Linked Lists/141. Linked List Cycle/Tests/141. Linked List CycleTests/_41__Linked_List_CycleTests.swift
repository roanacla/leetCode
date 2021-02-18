import XCTest
@testable import _41__Linked_List_Cycle

final class _41__Linked_List_CycleTests: XCTestCase {
    func testExample() {
      let head: ListNode = ListNode(3)
      let two = ListNode(2)
      let zero = ListNode(0)
      let minusFour = ListNode(-4)
      
      head.next = two
      two.next = zero
      zero.next = minusFour
      minusFour.next = two
      
      XCTAssertEqual(true, hasCycle(head))
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
