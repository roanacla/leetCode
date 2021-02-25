import XCTest
@testable import CloneGraph

final class CloneGraphTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
//        XCTAssertEqual(CloneGraph().text, "Hello, World!")
    }
  
  func testCreateAdjancencyList() {
//    [[2,4],[1,3],[2,4],[1,3]]
    let node1 = Node(1)
    let node2 = Node(2)
    let node3 = Node(3)
    let node4 = Node(4)
    
    node1.neighbors = [node2, node4]
    node2.neighbors = [node1, node3]
    node3.neighbors = [node2, node4]
    node4.neighbors = [node1, node3]
    
    var adjancecyList = [Int:[Int]]()
    var answerAdjancecyList = [Int:[Int]]()
    
//    createAdjacencyList(from: node1, result: &adjancecyList)
//    createAdjacencyList(from: cloneGraph(node1), result: &answerAdjancecyList)
//    XCTAssertEqual(adjancecyList, answerAdjancecyList)
    cloneGraph(node1)
    
  }

    static var allTests = [
        ("testExample", testExample),
    ]
}
