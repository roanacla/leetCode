import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(Replace_Elements_with_Greatest_Element_on_Right_SideTests.allTests),
    ]
}
#endif
