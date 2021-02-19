import XCTest
@testable import FindFirstAndLastPositionOfElementInSortedArray

final class FindFirstAndLastPositionOfElementInSortedArrayTests: XCTestCase {
    func testExample() {
        let result = searchRange([5,7,7,8,8,10], 8)
        let answer = [3,4]
        XCTAssertEqual(result, answer)
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
