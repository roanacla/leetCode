import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(_11__Sparse_Matrix_MultiplicationTests.allTests),
    ]
}
#endif
