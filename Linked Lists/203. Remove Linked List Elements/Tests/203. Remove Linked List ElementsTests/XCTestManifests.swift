import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(_03__Remove_Linked_List_ElementsTests.allTests),
    ]
}
#endif
