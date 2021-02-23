import XCTest
@testable import _77__Squares_of_a_Sorted_Array

final class _77__Squares_of_a_Sorted_ArrayTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        
      XCTAssertEqual([0,1,9,16,100], sortedSquares([-4,-1,0,3,10]))
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
