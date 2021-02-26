import XCTest
@testable import _61__Graph_Valid_Tree

final class _61__Graph_Valid_TreeTests: XCTestCase {
    func testExample() {
      XCTAssertEqual(true, validTree(5,[[0,1], [0,2], [0,3], [1,4]]))
      XCTAssertEqual(false, validTree(4,[[2,3],[1,2],[1,3]]))
      XCTAssertEqual(false, validTree(5,[[0,1], [1,2], [2,3], [1,3], [1,4]]))
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
