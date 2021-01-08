import XCTest
@testable import SearchInsertPosition

final class SearchInsertPositionTests: XCTestCase {
    func testExample() {
      let test = [1,3,5,6]
      let ans = 1

      XCTAssertEqual(ans,searchInsert(test, 2))
    }
  
  func testExample3() {
    let test = [1,3,5,6]
    
    var ans = 2
    XCTAssertEqual(ans,searchInsert3(test, 4))
    
    ans = 0
    XCTAssertEqual(ans,searchInsert3(test, 0))
    
    ans = 4
    XCTAssertEqual(ans,searchInsert3(test, 7))
    
    ans = 1
    XCTAssertEqual(ans,searchInsert3(test, 2))
  }

    static var allTests = [
        ("testExample", testExample),
    ]
}
