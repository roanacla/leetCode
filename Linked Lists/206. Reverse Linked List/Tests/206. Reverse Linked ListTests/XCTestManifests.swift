import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(_06__Reverse_Linked_ListTests.allTests),
    ]
}
#endif
