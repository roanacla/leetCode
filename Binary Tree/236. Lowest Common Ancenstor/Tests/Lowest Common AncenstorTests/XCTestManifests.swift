import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(Lowest_Common_AncenstorTests.allTests),
    ]
}
#endif
