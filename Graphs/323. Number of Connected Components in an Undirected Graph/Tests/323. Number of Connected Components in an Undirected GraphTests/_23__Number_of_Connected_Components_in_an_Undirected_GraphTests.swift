import XCTest
@testable import _23__Number_of_Connected_Components_in_an_Undirected_Graph

final class _23__Number_of_Connected_Components_in_an_Undirected_GraphTests: XCTestCase {
    func testExample() {
        var graph = [[2,3],[1,2],[1,3]]
        var nodes = 4
        XCTAssertEqual(2, countComponents(nodes,graph))
      graph = [[0,1],[1,2],[3,4]]
      nodes = 5
      XCTAssertEqual(2, countComponents(nodes, graph))
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
