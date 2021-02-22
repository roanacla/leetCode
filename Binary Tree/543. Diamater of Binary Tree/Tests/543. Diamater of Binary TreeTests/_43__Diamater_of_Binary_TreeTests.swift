import XCTest
@testable import _43__Diamater_of_Binary_Tree

final class _43__Diamater_of_Binary_TreeTests: XCTestCase {
  
  func createTree(from array: [Int?]) -> TreeNode? {
    guard !array.isEmpty else { return nil }
    
    func getChildIndices(ofParentAt parentIndex: Int) -> (left: Int, right: Int) {
      let leftIndex = (2 * parentIndex) + 1
      return (leftIndex, leftIndex + 1)
    }
    
    func getParentIndex(ofChildAt index: Int) -> Int {
      return (index - 1) / 2
    }
    
    var dic: [Int: TreeNode] = [:]
    // dic where my keys == item.number
    for item in array {
      if item != nil {
        dic[item!] = TreeNode(item!)
      }
    }
    for index in 0..<array.count {
      if array[index] != nil {
        let parentNode = dic[array[index]!]
        let indices = getChildIndices(ofParentAt: index)
        if indices.left < array.count, let key = array[indices.left], dic[key] != nil {
          parentNode?.left = dic[key]
        }
        if indices.right < array.count, let key = array[indices.right], dic[key] != nil {
          parentNode?.right = dic[key]
        }
      }
    }
    
    return dic[array[0]!]
  }
  
  func testExample() {
    let test = [1,2,3,4,5]
    let rootNode = createTree(from: test)
    XCTAssertEqual(3, diameterOfBinaryTree(rootNode))
  }
  
  static var allTests = [
    ("testExample", testExample),
  ]
}
