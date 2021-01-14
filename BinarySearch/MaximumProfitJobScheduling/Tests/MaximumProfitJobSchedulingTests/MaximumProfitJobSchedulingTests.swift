import XCTest
@testable import MaximumProfitJobScheduling

final class MaximumProfitJobSchedulingTests: XCTestCase {
    func testExample() {
      let startTime = [1,2,3,4,6]
      let endTime = [3,5,10,6,9]
      let profit = [20,20,100,70,60]
      let result = jobScheduling(startTime, endTime, profit)
      XCTAssertEqual(result, 150)
    }
  
  func testExampleTwo() {
    let startTime = [1,2,3,3]
    let endTime = [3,4,5,6]
    let profit = [50,10,40,70]
    let result = jobScheduling(startTime, endTime, profit)
    XCTAssertEqual(result, 120)
  }
  
  func testExampleThree() {
    let startTime = [1,1,1]
    let endTime = [2,3,4]
    let profit = [5,6,4]
    let result = jobScheduling(startTime, endTime, profit)
    XCTAssertEqual(result, 6)
  }
  

  
  func testExampleFour() {
    let startTime = [4,2,4,8,2]
    let endTime = [5,5,5,10,8]
    let profit = [1,2,8,10,4]
    let result = jobScheduling(startTime, endTime, profit)
    XCTAssertEqual(result, 18)
  }
  
  func testExampleFive() {
    let startTime = [6,15,7,11,1,3,16,2]
    let endTime = [19,18,19,16,10,8,19,8]
    let profit = [2,9,1,19,5,7,3,19]
    let result = jobScheduling(startTime, endTime, profit)
    XCTAssertEqual(result, 41)
  }

    static var allTests = [
        ("testExample", testExample),
    ]
}
