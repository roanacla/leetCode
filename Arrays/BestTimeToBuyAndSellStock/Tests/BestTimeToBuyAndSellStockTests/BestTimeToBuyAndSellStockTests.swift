import XCTest
@testable import BestTimeToBuyAndSellStock

final class BestTimeToBuyAndSellStockTests: XCTestCase {
    func testExample() {
      let test = [7,1,5,3,6,4,2]
      let answer = 5
      XCTAssertEqual(answer, maxProfit(test))
    }
  
  func testExample2() {
    let test = [4,7,1,2]
    let answer = 3
    XCTAssertEqual(answer, maxProfit(test))
  }
  
  func testExample3() {
    let test = [7,1,5,3,6,4]
    let answer = 5
    XCTAssertEqual(answer, maxProfit(test))
  }
  
  

    static var allTests = [
        ("testExample", testExample),
    ]
}
