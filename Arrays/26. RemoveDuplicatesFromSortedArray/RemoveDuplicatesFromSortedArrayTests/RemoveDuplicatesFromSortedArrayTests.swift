//
//  RemoveDuplicatesFromSortedArrayTests.swift
//  RemoveDuplicatesFromSortedArrayTests
//
//  Created by Roger Navarro on 12/26/20.
//

import XCTest
@testable import RemoveDuplicatesFromSortedArray

class RemoveDuplicatesFromSortedArrayTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
      var answer = [1,1,2]
      let vc = ViewController()
      let lenght = vc.removeDuplicates(&answer)
//      XCTAssertEqual([1,2], answer)
//      XCTAssertEqual(2, lenght)
      answer = []
      XCTAssertEqual(0, vc.removeDuplicates(&answer))
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
