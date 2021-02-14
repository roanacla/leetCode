import XCTest
@testable import _28_Longest_Consecutive_Sequence

final class _28_Longest_Consecutive_SequenceTests: XCTestCase {
    func testExample() {
      let nums = [100,4,200,1,3,2]
      let output = 4
      XCTAssertEqual(output, longestConsecutive(nums))
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
