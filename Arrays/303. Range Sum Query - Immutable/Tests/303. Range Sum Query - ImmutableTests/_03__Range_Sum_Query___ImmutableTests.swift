import XCTest
@testable import _03__Range_Sum_Query___Immutable

final class _03__Range_Sum_Query___ImmutableTests: XCTestCase {
    func testExample() {
//      [[], [0, 2], [2, 5], [0, 5]]
      let nums = [-2, 0, 3, -5, 2, -1]
      let range1 = [0,2]
      let range2 = [2,5]
      let range3 = [0,5]
      let numArray = NumArray(nums)
      XCTAssertEqual(1, numArray.sumRange(range1[0], range1[1]))
      XCTAssertEqual(-1, numArray.sumRange(range2[0], range2[1]))
      XCTAssertEqual(-3, numArray.sumRange(range3[0], range3[1]))
      
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
