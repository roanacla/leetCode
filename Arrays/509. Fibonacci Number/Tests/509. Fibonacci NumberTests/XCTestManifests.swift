import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(_09__Fibonacci_NumberTests.allTests),
    ]
}
#endif
