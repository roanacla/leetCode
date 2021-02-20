import XCTest
@testable import _44__Find_smallest_Letter_Greater_Than_Target

final class _44__Find_smallest_Letter_Greater_Than_TargetTests: XCTestCase {
    func testExample() {
      let input: [Character] = ["c", "f", "j"]
      XCTAssertEqual("c", nextGreatestLetter(input,"a"))
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
