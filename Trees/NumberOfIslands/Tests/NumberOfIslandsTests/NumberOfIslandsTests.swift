import XCTest
@testable import NumberOfIslands

final class NumberOfIslandsTests: XCTestCase {
    func testExample() {
      let grid: [[Character]] = [["1","1","0","0","0"],
                                 ["1","1","0","0","0"],
                                 ["0","0","1","0","0"],
                                 ["0","0","0","1","1"]]

      XCTAssertEqual(3,numIslands(grid))
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
