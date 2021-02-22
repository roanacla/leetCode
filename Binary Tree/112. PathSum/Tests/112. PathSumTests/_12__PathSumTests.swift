import XCTest
@testable import _12__PathSum

final class _12__PathSumTests: XCTestCase {
  
  //  [5,4,8,11,null,13,4,7,2,null,null,null,1]
  
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
    let head = createTree(from: [5,4,8,11,nil,13,4,7,2,nil,nil,nil,1])
    XCTAssertEqual(true, hasPathSum(head, 22))
  }
  
  static var allTests = [
    ("testExample", testExample),
  ]
}


