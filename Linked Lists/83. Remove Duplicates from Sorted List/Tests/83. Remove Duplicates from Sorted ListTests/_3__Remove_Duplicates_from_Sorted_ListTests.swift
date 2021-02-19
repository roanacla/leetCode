import XCTest
@testable import _3__Remove_Duplicates_from_Sorted_List

final class _3__Remove_Duplicates_from_Sorted_ListTests: XCTestCase {
    func testExample() {
//      [1,1,2,3,3]
      let first = ListNode(1)
      let second = ListNode(1)
      let third = ListNode(2)
      let fourth = ListNode(3)
      let fifth = ListNode(3)
      
      first.next = second
      second.next = third
      third.next = fourth
      fourth.next = fifth
      XCTAssertEqual(second.val, deleteDuplicates(first)?.val)
      XCTAssertEqual(second.next?.next?.val, deleteDuplicates(first)?.next?.next?.val)
      XCTAssertEqual(second.next?.val, deleteDuplicates(first)?.next?.val)
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
