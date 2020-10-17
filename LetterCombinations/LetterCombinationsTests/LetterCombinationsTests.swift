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
  
  func testZero() throws {
    let viewModel = ViewModel()
    let result = viewModel.letterCombinations("")
    XCTAssertEqual([], result)
  }

    func testExample() throws {
      let viewModel = ViewModel()
      let result = viewModel.letterCombinations("23")
      XCTAssertEqual(result, ["ad","ae","af","bd","be","bf","cd","ce","cf"])
    }
  
  func testExampleTwo() throws {
    let viewModel = ViewModel()
    let result = viewModel.letterCombinations("234")
    let answer = ["adg","adh","adi","aeg","aeh","aei","afg","afh","afi","bdg","bdh","bdi","beg","beh","bei","bfg","bfh","bfi","cdg","cdh","cdi","ceg","ceh","cei","cfg","cfh","cfi"]
    XCTAssertEqual(result, answer)
  }
  
  func testExampleThree() throws {
    let viewModel = ViewModel()
    let result = viewModel.letterCombinations("22")
    XCTAssertEqual(result, ["aa","ab","ac","ba","bb","bc","ca","cb","cc"])
  }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
