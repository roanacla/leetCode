import XCTest
@testable import ValidPalindrome_

final class ValidPalindrome_Tests: XCTestCase {
    func testExample() {
      let test = "A man, a plan, a canal: Panama"
      XCTAssertTrue(isPalindrome(test))
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
