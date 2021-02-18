import XCTest
@testable import _76__Middle_of_the_Linked_List

final class _76__Middle_of_the_Linked_ListTests: XCTestCase {
    func testExample() {
//      [1,2,3,4,5]
      let one = ListNode(1)
      let two = ListNode(2)
      let three = ListNode(3)
      let four = ListNode(4)
      let five = ListNode(5)
      
      one.next = two
      two.next = three
      three.next = four
      four.next = five
      
      XCTAssertEqual(three.val, middleNode(one)!.val)
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
