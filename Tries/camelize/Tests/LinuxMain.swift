import XCTest

import camelizeTests

var tests = [XCTestCaseEntry]()
tests += camelizeTests.allTests()
XCTMain(tests)
