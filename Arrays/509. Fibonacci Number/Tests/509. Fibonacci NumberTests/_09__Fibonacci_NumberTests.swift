import XCTest
@testable import _09__Fibonacci_Number

final class _09__Fibonacci_NumberTests: XCTestCase {
    func testExample() {
        let n = 30
        XCTAssertEqual(fib(n), 832040)
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
