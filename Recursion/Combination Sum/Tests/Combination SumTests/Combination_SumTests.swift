import XCTest
@testable import Combination_Sum

final class Combination_SumTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        let candidates = [2,3,6,7]
        let target = 7
      XCTAssertEqual([[2,2,3],[7]], combinationSum(candidates, target))
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
