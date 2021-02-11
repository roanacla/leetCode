import XCTest
@testable import Minimum_Steps_To_One

final class Minimum_Steps_To_OneTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
      var ans =  minimumStepsToOne(num: 4)
      XCTAssertEqual(ans, 2)
      
      ans =  minimumStepsToOne(num: 5)
      XCTAssertEqual(ans, 3)
      
      ans =  minimumStepsToOne(num: 11)
      XCTAssertEqual(ans, 4)
      
      ans = minimumStepsToOne(num: 10)
      XCTAssertEqual(ans, 3)
      
      ans = minimumStepsToOne(num: 1000000)
      XCTAssertEqual(ans, 19)
    }
  
  

    static var allTests = [
        ("testExample", testExample),
    ]
}
