import XCTest
@testable import _52__Meeting_Rooms

final class _52__Meeting_RoomsTests: XCTestCase {
    func testExample() {
      let intervals = [[0,30],[5,10],[15,20]]
      XCTAssertEqual(canAttendMeetings(intervals), false)
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
