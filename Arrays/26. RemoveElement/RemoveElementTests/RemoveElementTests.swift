//
//  RemoveElementTests.swift
//  RemoveElementTests
//
//  Created by Roger Navarro on 12/26/20.
//

import XCTest
@testable import RemoveElement

class RemoveElementTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
      var array = [1,2,3,3,3,4,5,6]
      let result = removeElement(&array, 3)
      XCTAssertEqual([1,2,4,5,6], array )
      XCTAssertEqual(5, result)
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
