import XCTest
@testable import _17__Merge_Two_Binary_Trees

final class _17__Merge_Two_Binary_TreesTests: XCTestCase {
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
    
    let array: [Int?] = [1,3,2,5]
    let arrayTwo: [Int?] = [2,1,3,nil,4,nil,7]
    
    let root1 = createTree(from: array)
    let root2 = createTree(from: arrayTwo)
    
    let answer = createTree(from: [3,4,5,5,4,nil,7])
    
    //Not working because createTree(from:) doesn't support arrays with repeated numbers
    XCTAssertEqual(answer, mergeTrees(root1, root2))
    
  }
  
  static var allTests = [
    ("testExample", testExample),
  ]
}
