import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(_8__SubsetsTests.allTests),
    ]
}
#endif
