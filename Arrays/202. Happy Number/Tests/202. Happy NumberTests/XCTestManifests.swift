import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(_02__Happy_NumberTests.allTests),
    ]
}
#endif
