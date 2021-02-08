import XCTest
@testable import Longest_Increasing_Path_in_a_Matrix

final class Longest_Increasing_Path_in_a_MatrixTests: XCTestCase {
    func testExample() {
      let matrix = [[9,9,4],[6,6,8],[2,1,1]]
      let answer = longestIncreasingPath(matrix)
      XCTAssertEqual(answer, 4)
    }
  
  func testExample2() {
    let matrix = [[3,4,5],[3,2,6],[2,2,1]]
    let answer = longestIncreasingPath(matrix)
    XCTAssertEqual(answer, 4)
  }
  func testExample3() {
    let matrix = [[1]]
    let answer = longestIncreasingPath(matrix)
    XCTAssertEqual(answer, 1)
  }
  
  func testExample4() {
    let matrix = [[1,2]]
    let answer = longestIncreasingPath(matrix)
    XCTAssertEqual(answer, 2)
  }

    static var allTests = [
        ("testExample", testExample),
    ]
}
