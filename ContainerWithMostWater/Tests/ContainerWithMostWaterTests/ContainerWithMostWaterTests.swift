import XCTest
@testable import ContainerWithMostWater

final class ContainerWithMostWaterTests: XCTestCase {
    func testExample() {
      let test = [1,1,8,6,2,5,4,8,3,7,1,1]
      let answer = 49
      
      XCTAssertEqual(answer, maxArea(test))
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
