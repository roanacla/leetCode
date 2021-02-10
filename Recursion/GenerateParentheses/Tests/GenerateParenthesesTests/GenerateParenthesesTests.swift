import XCTest
@testable import GenerateParentheses

final class GenerateParenthesesTests: XCTestCase {
    func testExample() {
        let result = generateParenthesis(4)
      print(result)
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
