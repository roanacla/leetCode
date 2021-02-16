import XCTest
@testable import _36__Single_Number

final class _36__Single_NumberTests: XCTestCase {
  func testExample() {
    var nums = [2,2,1]
    XCTAssertEqual(1, singleNumber(nums))
    nums = [1]
    XCTAssertEqual(1, singleNumber(nums))
    nums = []
    XCTAssertEqual(0, singleNumber(nums))
    nums = [4,2,4,2,1]
    XCTAssertEqual(1, singleNumber(nums))
  }
  
  static var allTests = [
    ("testExample", testExample),
  ]
}
