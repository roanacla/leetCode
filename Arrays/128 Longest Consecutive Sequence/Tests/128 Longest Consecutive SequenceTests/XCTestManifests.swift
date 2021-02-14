import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(_28_Longest_Consecutive_SequenceTests.allTests),
    ]
}
#endif
