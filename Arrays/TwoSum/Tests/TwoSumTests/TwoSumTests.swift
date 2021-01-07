import XCTest
@testable import TwoSum

final class TwoSumTests: XCTestCase {
    func testExample() {
      var nums = [3,2,4]//[2,7,11,15]
      var target = 6//9
      XCTAssertEqual([1,2], twoSum(nums, target))
      nums = [2,7,11,15]
      target = 9
      XCTAssertEqual([0,1], twoSum(nums, target))
      
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
