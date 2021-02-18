import XCTest
@testable import _34__Palindrome_Linked_List

final class _34__Palindrome_Linked_ListTests: XCTestCase {
    func testExample() {
        let one = ListNode(1)
      let two = ListNode(2)
      let three = ListNode(2)
      let four = ListNode(1)
      
      one.next = two
      two.next = three
      three.next = four
      
      
      XCTAssertEqual(isPalindrome(one), true)
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
