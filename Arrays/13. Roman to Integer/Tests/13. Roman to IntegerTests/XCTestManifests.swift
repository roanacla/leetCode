import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(_3__Roman_to_IntegerTests.allTests),
    ]
}
#endif
