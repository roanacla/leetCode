import XCTest
@testable import _68__Missing_Numbers

final class _68__Missing_NumbersTests: XCTestCase {
    func testExample() {
        let nums = [3,0,1]
        XCTAssertEqual(2, missingNumber(nums))
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
