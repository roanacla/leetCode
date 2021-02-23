import XCTest
@testable import _35__Lowest_Common_Ancestor_of_Binary_Search_Tree

final class _35__Lowest_Common_Ancestor_of_Binary_Search_TreeTests: XCTestCase {
    func testExample() {
      let three = TreeNode(3)
      let five = TreeNode(5)
      let one = TreeNode(1)
      let two = TreeNode(2)
      let six = TreeNode(6)
      let zero = TreeNode(0)
      let eight = TreeNode(8)
      let seven = TreeNode(7)
      let four = TreeNode(4)
      let nine = TreeNode(9)
      
      six.left = two
      six.right = eight
      two.left = zero
      two.right = four
      four.left = three
      four.right = five
      eight.left = seven
      eight.right = nine
      
      XCTAssertEqual(two, lowestCommonAncestor(six, five, two) )
      XCTAssertEqual(two, lowestCommonAncestor(two, two, three) )
      XCTAssertEqual(six, lowestCommonAncestor(six, zero, nine) )
      XCTAssertEqual(six, lowestCommonAncestor(six, eight, five) )
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
