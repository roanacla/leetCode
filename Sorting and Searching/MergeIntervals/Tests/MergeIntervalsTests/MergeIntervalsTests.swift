import XCTest
@testable import MergeIntervals

final class MergeIntervalsTests: XCTestCase {
    func testExample() {
      let input = [[1,3],[2,6],[8,10],[15,18]]
      let output = merge(input)
      XCTAssertEqual( [[1,6],[8,10],[15,18]],output)
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
