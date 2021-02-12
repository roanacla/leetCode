import XCTest
@testable import Replace_Elements_with_Greatest_Element_on_Right_Side

final class Replace_Elements_with_Greatest_Element_on_Right_SideTests: XCTestCase {
    func testExample() {
      let input = [17,18,5,4,6,1]
      let ans = [18,6,6,6,1,-1]
      XCTAssertEqual(ans, replaceElements(input))
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
