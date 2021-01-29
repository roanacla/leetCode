import XCTest
@testable import Maximum_Depth_of_Binary_Tree

final class Maximum_Depth_of_Binary_TreeTests: XCTestCase {
    func testExample() {
      let rootNode = TreeNode(3)
      let left1 = TreeNode(9)
      let right1 = TreeNode(20)
      let right1left = TreeNode(15)
      let right1right = TreeNode(7)
      rootNode.left = left1
      rootNode.right = right1
      right1.left = right1left
      right1.right = right1right
      XCTAssertEqual(3, maxDepth(rootNode))
    }
  
  func testExampleTwo() {
//    let array = [1,2,3,4,null,null,5]
    let rootNode = TreeNode(1)
    let left = TreeNode(2)
    let right = TreeNode(3)
    left.left = TreeNode(4)
    right.right = TreeNode(5)
    rootNode.left = left
    rootNode.right = right
    XCTAssertEqual(3, maxDepth(rootNode))
  }
    static var allTests = [
        ("testExample", testExample),
    ]
}
