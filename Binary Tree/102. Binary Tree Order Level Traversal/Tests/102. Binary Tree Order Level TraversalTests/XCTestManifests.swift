import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(_02__Binary_Tree_Order_Level_TraversalTests.allTests),
    ]
}
#endif
