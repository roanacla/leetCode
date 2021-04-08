import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(Find_restaurants_nearbyTests.allTests),
    ]
}
#endif
