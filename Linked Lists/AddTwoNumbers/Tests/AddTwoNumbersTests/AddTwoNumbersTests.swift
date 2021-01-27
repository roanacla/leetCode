import XCTest
@testable import AddTwoNumbers

final class AddTwoNumbersTests: XCTestCase {
  
  
    func testExample() {
      let test = convertToLinkedList(number: 342)
      let result = addTwoNumbers(convertToLinkedList(number: 342), convertToLinkedList(number: 465))
      XCTAssertEqual(convertToLinkedList(number: 807), result!)
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
