import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(FindMedianSortedArraysTests.allTests),
    ]
}
#endif
