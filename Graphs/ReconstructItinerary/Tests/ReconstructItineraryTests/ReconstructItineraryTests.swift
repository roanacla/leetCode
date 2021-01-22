import XCTest
@testable import ReconstructItinerary

final class ReconstructItineraryTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
      let result = findItinerary([["MUC","LHR"],["JFK","MUC"],["SFO","SJC"],["LHR","SFO"]])
      let answer = ["JFK", "MUC", "LHR", "SFO", "SJC"]
      XCTAssertEqual(answer, result)
    }
  
  func testExampleTwo() {
//    let result = findItinerary([["JFK","SFO"],["JFK","ATL"],["SFO","ATL"],["ATL","JFK"],["ATL","SFO"]])
    let result = findItinerary([["JFK","KUL"],["JFK","NRT"],["NRT","JFK"]])
//    let answer = ["JFK","ATL","JFK","SFO","ATL","SFO"]
    let answer = ["JFK","NRT","JFK","KUL"]
    XCTAssertEqual(answer, result)
  }

    static var allTests = [
        ("testExample", testExample),
    ]
}
