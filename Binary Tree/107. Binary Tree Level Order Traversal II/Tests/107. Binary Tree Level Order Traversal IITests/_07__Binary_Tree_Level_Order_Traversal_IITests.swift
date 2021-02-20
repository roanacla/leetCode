import XCTest
@testable import _07__Binary_Tree_Level_Order_Traversal_II

final class _07__Binary_Tree_Level_Order_Traversal_IITests: XCTestCase {
    func testExample() {
//      [3,9,20,null,null,15,7]
      let three = TreeNode(3)
      let nine = TreeNode(9)
      let twenty = TreeNode(20)
      let fifthteen = TreeNode(15)
      let seven = TreeNode(7)
      
      three.left = nine
      three.right = twenty
      twenty.left = fifthteen
      twenty.right = seven
      
//      levelOrderBottom(three)
      XCTAssertEqual([[15,7],[9,20],[3]], levelOrderBottom(three))
      
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
