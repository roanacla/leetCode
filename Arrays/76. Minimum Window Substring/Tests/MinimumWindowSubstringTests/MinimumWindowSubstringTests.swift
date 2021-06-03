import XCTest
@testable import MinimumWindowSubstring

final class MinimumWindowSubstringTests: XCTestCase {
    func testExample() {
      let string = "ADOBECODEBANC"
      let subString = "ABC"
      let answer = "BANC"
      XCTAssertEqual(answer, minWindow(string,subString))
    }
  
  func testExampleTwo() {
    let string = "a"
    let subString = "a"
    let answer = "a"
    XCTAssertEqual(answer, minWindow(string,subString))
  }

    static var allTests = [
        ("testExample", testExample),
    ]
}
