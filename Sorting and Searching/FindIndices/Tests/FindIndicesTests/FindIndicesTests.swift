import XCTest
@testable import FindIndices

final class FindIndicesTests: XCTestCase {
  func testFindLeftEdgeIndex() {
    let test = [1,2,2,4,4,4,5,5,7]
    XCTAssertEqual(nil, test.findLeftEdgeIndex(for: 0))
    XCTAssertEqual(nil, test.findLeftEdgeIndex(for: 8))
    XCTAssertEqual(8, test.findLeftEdgeIndex(for: 7))
    XCTAssertEqual(0, test.findLeftEdgeIndex(for: 1))
    XCTAssertEqual(3, test.findLeftEdgeIndex(for: 4))
    XCTAssertEqual(nil, test.findLeftEdgeIndex(for: 3))
    XCTAssertEqual(nil, test.findLeftEdgeIndex(for: 6))
  }
  
  func testFindRightEdgeIndex() {
    let test = [1,2,2,4,4,4,5,5,7]
    XCTAssertEqual(nil, test.findRightEdgeIndex(for: 0))
    XCTAssertEqual(nil, test.findRightEdgeIndex(for: 8))
    XCTAssertEqual(8, test.findRightEdgeIndex(for: 7))
    XCTAssertEqual(0, test.findRightEdgeIndex(for: 1))
    XCTAssertEqual(5, test.findRightEdgeIndex(for: 4))
    XCTAssertEqual(nil, test.findRightEdgeIndex(for: 3))
    XCTAssertEqual(nil, test.findRightEdgeIndex(for: 6))
  }
  
  func testFindIndeces() {
    let test = [1,2,2,4,4,4,5,5,7]
    XCTAssertEqual(3..<6, findIndeces(for: 4, in: test))
    XCTAssertEqual(6..<8, findIndeces(for: 5, in: test))
    XCTAssertEqual(0..<1, findIndeces(for: 1, in: test))
    XCTAssertEqual(1..<3, findIndeces(for: 2, in: test))
    XCTAssertEqual(nil, findIndeces(for: 0, in: test))
    XCTAssertEqual(nil, findIndeces(for: 8, in: test))
  }

  static var allTests = [
    ("testExample", testFindLeftEdgeIndex),
  ]
}
