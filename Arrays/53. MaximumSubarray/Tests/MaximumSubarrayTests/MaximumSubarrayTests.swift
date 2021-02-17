import XCTest
@testable import MaximumSubarray

final class MaximumSubarrayTests: XCTestCase {
    func testExample() {
      let nums = [-2,1,-3,4,-1,2,1,-5,4]
      
      XCTAssertEqual(maxSubArray(nums), 6)
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
