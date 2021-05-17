import XCTest
@testable import AddTwoNumbers

final class AddTwoNumbersTests: XCTestCase {
  
  
    func testExample() {
      let node1 = convertToLinkedList(number: 342)
      let node2 = convertToLinkedList(number: 465)
      let result = addTwoNumbers(node1, node2)
      let answer = convertToLinkedList(number: 807)
      XCTAssertEqual(answer, result!)
      XCTAssertFalse(node1==node2)
    }
  
  func testTwo() {
    let node1 = convertToLinkedList(number: 9999)
    let node2 = convertToLinkedList(number: 9999999)
    let result = addTwoNumbers(node1, node2)
    let answer = convertToLinkedList(number: 10009998)
    XCTAssertEqual(answer, result!)
  }

    static var allTests = [
        ("testExample", testExample),
    ]
}
