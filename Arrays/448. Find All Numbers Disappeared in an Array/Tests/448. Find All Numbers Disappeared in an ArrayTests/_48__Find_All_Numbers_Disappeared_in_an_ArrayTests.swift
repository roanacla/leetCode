import XCTest
@testable import _48__Find_All_Numbers_Disappeared_in_an_Array

final class _48__Find_All_Numbers_Disappeared_in_an_ArrayTests: XCTestCase {
    func testExample() {
        let nums = [4,3,2,7,8,2,3,1]
      XCTAssertEqual([5,6], findDisappearedNumbers(nums))
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
