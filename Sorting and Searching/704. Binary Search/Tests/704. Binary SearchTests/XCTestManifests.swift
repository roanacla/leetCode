import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(_04__Binary_SearchTests.allTests),
    ]
}
#endif
