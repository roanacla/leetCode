import XCTest
@testable import _04__Binary_Search

final class _04__Binary_SearchTests: XCTestCase {
    func testExample() {
      let array = [-1,0,3,5,9,12]
      let target = 9
      XCTAssertEqual(search(array, target), 4)
    }
  
  func testExampleTwo() {
    let array = [-1,0,3,5,9,12]
    let target = 2
    XCTAssertEqual(search(array, target), -1)
  }

    static var allTests = [
        ("testExample", testExample),
    ]
}
