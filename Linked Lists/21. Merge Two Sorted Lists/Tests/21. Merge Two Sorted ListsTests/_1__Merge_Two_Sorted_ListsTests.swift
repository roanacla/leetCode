import XCTest
@testable import _1__Merge_Two_Sorted_Lists

final class _1__Merge_Two_Sorted_ListsTests: XCTestCase {
    func testExample() {
      
      let first = ListNode(1)
      let second = ListNode(2)
      let third = ListNode(4)
      
      let fourth = ListNode(1)
      let fifth = ListNode(3)
      let sixth = ListNode(4)
      
      first.next = second
      second.next = third
      
      fourth.next = fifth
      fifth.next = sixth
      
      XCTAssertEqual("-1-1-2-3-4-4-", convertToArray(node: mergeTwoLists(first, fourth))) 
      
    }
  
  func convertToArray(node: ListNode?) -> String {
    var current = node
    var result = "-"
    while current != nil {
      result += "\(current!.val)-"
      current = current?.next
    }
    return result
  }

    static var allTests = [
        ("testExample", testExample),
    ]
}
