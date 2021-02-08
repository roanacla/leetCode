import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(Longest_Increasing_Path_in_a_MatrixTests.allTests),
    ]
}
#endif
