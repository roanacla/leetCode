import XCTest
@testable import _3__Spiral_Matrix

final class _3__Spiral_MatrixTests: XCTestCase {
    func testExample() {
      let input = [[1,2,3],[4,5,6],[7,8,9]]
      let answer = [1,2,3,6,9,8,7,4,5]
      
      XCTAssertEqual(answer, spiralOrder(input))
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
