import XCTest
@testable import Lowest_Common_Ancenstor

final class Lowest_Common_AncenstorTests: XCTestCase {
    func testExample() {
//      [3,5,1,6,2,0,8,null,null,7,4], p = 5, q = 1
      let three = TreeNode(3)
      let five = TreeNode(5)
      let one = TreeNode(1)
      let two = TreeNode(2)
      let six = TreeNode(6)
      let zero = TreeNode(0)
      let eight = TreeNode(8)
      let seven = TreeNode(7)
      let four = TreeNode(4)
      
      three.left = five
      three.right = one
      five.left = six
      five.right = two
      one.left = zero
      one.right = eight
      two.left = seven
      two.right = four
      
      XCTAssertEqual(three, lowestCommonAncestor(three, five, one) )
      XCTAssertEqual(three, lowestCommonAncestor(three, six, eight) )
      XCTAssertEqual(five, lowestCommonAncestor(three, six, four) )
      XCTAssertEqual(five, lowestCommonAncestor(three, five, four) )
      
//        XCTAssertEqual(Lowest_Common_Ancenstor().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
