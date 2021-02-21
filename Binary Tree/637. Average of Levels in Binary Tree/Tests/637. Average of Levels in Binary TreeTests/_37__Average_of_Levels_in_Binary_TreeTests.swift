import XCTest
@testable import _37__Average_of_Levels_in_Binary_Tree

final class _37__Average_of_Levels_in_Binary_TreeTests: XCTestCase {
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
    
    //      levelOrderBottom(three)
    XCTAssertEqual([3.00000,14.50000,11.00000], averageOfLevels(three))
    
  }
  
  static var allTests = [
    ("testExample", testExample),
  ]
}
