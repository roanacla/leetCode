import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(_80__Valid_Palindrome_IITests.allTests),
    ]
}
#endif
