//
//  RecursionTests.swift
//  RecursionTests
//
//  Created by Roger Navarro on 10/20/20.
//

import XCTest
@testable import Recursion

class RecursionTests: XCTestCase {
  
  override func setUpWithError() throws {
    // Put setup code here. This method is called before the invocation of each test method in the class.
  }
  
  override func tearDownWithError() throws {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
  }
  
  func testExample() throws {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
  }

  func testRecursionOne() throws {
    var input = "roger"
    var result = reverseString(&input)
    print(result)
    var answer = "regor"
    XCTAssertEqual(result, answer)
    input = "roger navarro"
    result = reverseString(&input)
    print(result)
    answer = "orravan regor"
    XCTAssertEqual(result, answer)
  }
  
  func testRecursionTwo() throws {
    var input = Array("rroger")
    reverseString(&input)
    XCTAssertEqual(Array("regorr"), input)
  }
  
  func testSwapPairs() throws {
    let val1 = ListNode(1)
    let val2 = ListNode(2)
    let val3 = ListNode(3)
    let val4 = ListNode(4)
    let val5 = ListNode(5)
    
    val1.next = val2
    val2.next = val3
    val3.next = val4
    val4.next = val5
    
    let headNode = swapPairs(val1)
    var result:[Int] = []
    headNode?.iterate(visit: { val in
      result.append(val)
    })
    let expectedAnswer = [2,1,4,3,5]
    XCTAssertEqual(result,expectedAnswer)
  }
  
  func testPerformanceExample() throws {
    // This is an example of a performance test case.
    self.measure {
      // Put the code you want to measure the time of here.
    }
  }
  
}
