import XCTest
@testable import _06__Reverse_Linked_List

final class _06__Reverse_Linked_ListTests: XCTestCase {
    func testExample() {
//      Input: 1->2->3->4->5->NULL
//      Output: 5->4->3->2->1->NULL
      let first = ListNode(1)
      let second = ListNode(2)
      let third = ListNode(3)
      let fourth = ListNode(4)
      let fifth = ListNode(5)
      
      first.next = second
      second.next = third
      third.next = fourth
      fourth.next = fifth
//      print(reverseList(first)?.next?.val)
      let ans = reverseList(first)
      XCTAssertEqual(5, ans?.val)
      XCTAssertEqual(4, ans?.next?.val)
      }

    static var allTests = [
        ("testExample", testExample),
    ]
}
