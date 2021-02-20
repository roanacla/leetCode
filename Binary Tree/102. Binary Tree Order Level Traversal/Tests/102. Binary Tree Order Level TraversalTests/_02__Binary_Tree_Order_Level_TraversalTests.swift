import XCTest
@testable import _02__Binary_Tree_Order_Level_Traversal

final class _02__Binary_Tree_Order_Level_TraversalTests: XCTestCase {
  func testExample() {
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
      XCTAssertEqual([[3],[9,20],[15,7]], levelOrder(three))
      
    }
  }
  
  static var allTests = [
    ("testExample", testExample),
  ]
}
