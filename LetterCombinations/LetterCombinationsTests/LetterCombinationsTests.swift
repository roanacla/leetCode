//
//  LetterCombinationsTests.swift
//  LetterCombinationsTests
//
//  Created by Roger Navarro on 10/16/20.
//

import XCTest
@testable import LetterCombinations

class LetterCombinationsTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
      let viewModel = ViewModel()
      let result = viewModel.letterCombinations("23")
      XCTAssertEqual(result, ["ad","ae","af","bd","be","bf","cd","ce","cf"])
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
