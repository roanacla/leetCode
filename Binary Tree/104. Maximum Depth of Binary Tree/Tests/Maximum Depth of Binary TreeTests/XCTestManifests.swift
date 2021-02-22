import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(Maximum_Depth_of_Binary_TreeTests.allTests),
    ]
}
#endif
