import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(_3__Spiral_MatrixTests.allTests),
    ]
}
#endif
