import XCTest
@testable import SearchInsertPosition

final class SearchInsertPositionTests: XCTestCase {
    func testExample() {
      let test = [1,3,5,6]
      let ans = 1

      XCTAssertEqual(ans,searchInsert(test, 2))
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
