//
//  SearchInRotatedArrayTests.swift
//  SearchInRotatedArrayTests
//
//  Created by Roger Navarro on 12/27/20.
//

import XCTest
@testable import SearchInRotatedArray

class SearchInRotatedArrayTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        XCTAssertEqual(1,search([1,3], 3))
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
