import XCTest
@testable import _52__Peak_Index_in_a_Moutain_Array

final class _52__Peak_Index_in_a_Moutain_ArrayTests: XCTestCase {
    func testExample() {
      let array = [24,69,100,99,79,78,67,36,26,19]
      let ans = 2
      XCTAssertEqual(ans, peakIndexInMountainArray(array))
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
