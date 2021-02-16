import XCTest
@testable import _17__Contains_Duplicate

final class _17__Contains_DuplicateTests: XCTestCase {
  func testExample() {
    let nums = [1,2,3,1]
    XCTAssertEqual(true, containsDuplicate(nums))
  }
  
  func testExampleTwo() {
    let nums :[Int] = []
    XCTAssertEqual(false, containsDuplicate(nums))
  }

    static var allTests = [
        ("testExample", testExample),
    ]
}
