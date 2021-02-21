import XCTest
@testable import _11__Minimum_Depth_of_Binary_Tree

final class _11__Minimum_Depth_of_Binary_TreeTests: XCTestCase {
  
  func testExample() {
    //    [3,9,20,15,7]
    let three = TreeNode(3)
    let nine = TreeNode(9)
    let twenty = TreeNode(20)
    let fifthteen = TreeNode(15)
    let seven = TreeNode(7)
    
    three.left = nine
    three.right = twenty
    twenty.left = fifthteen
    twenty.right = seven
    
    XCTAssertEqual(2, minDepth(three))
  }
  
  static var allTests = [
    ("testExample", testExample),
  ]
}
