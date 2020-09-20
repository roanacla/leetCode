//
//  Sum_of_even_numbers_after_queriesTests.swift
//  Sum of even numbers after queriesTests
//
//  Created by Roger Navarro on 9/19/20.
//

import XCTest
@testable import Sum_of_even_numbers_after_queries

class Sum_of_even_numbers_after_queriesTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
      let viewModel = ViewModel()
      let A = [1,2,3,4]
      let queries = [[1,0], [-3,1], [-4,0], [2,3]]
      XCTAssertEqual(viewModel.sumEvenAfterQueries(A, queries), [8,6,2,4])
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
