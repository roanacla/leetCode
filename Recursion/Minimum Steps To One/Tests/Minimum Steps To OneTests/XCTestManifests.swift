import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(Minimum_Steps_To_OneTests.allTests),
    ]
}
#endif
