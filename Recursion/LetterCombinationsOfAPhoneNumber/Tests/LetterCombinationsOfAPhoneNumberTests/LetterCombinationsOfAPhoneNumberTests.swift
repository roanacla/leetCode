import XCTest
@testable import LetterCombinationsOfAPhoneNumber

final class LetterCombinationsOfAPhoneNumberTests: XCTestCase {
    func testExample() {
        let digits = "23"
      let ans = ["ad","ae","af","bd","be","bf","cd","ce","cf"]
      XCTAssertEqual(ans, letterCombinations(digits).sorted())
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
