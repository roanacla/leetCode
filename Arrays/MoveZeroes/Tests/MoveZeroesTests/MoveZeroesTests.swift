import XCTest
@testable import MoveZeroes

final class MoveZeroesTests: XCTestCase {
    func testExample() {
      var input = [0,1,0,3,12]
      let answer = [1,3,12,0,0]
      moveZeroes(&input)
      XCTAssertEqual(answer,input )
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
