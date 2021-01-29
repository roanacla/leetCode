import XCTest
@testable import Same_Tree

final class Same_TreeTests: XCTestCase {
    func testExample() {
      let p = TreeNode(1, TreeNode(2), TreeNode(3))
      let q = TreeNode(1, TreeNode(2), TreeNode(3))
      XCTAssertEqual(true, isSameTree(p, q))
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
