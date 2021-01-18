import XCTest
@testable import ValidateIPAddress

final class ValidateIPAddressTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(ValidateIPAddress().text, "Hello, World!")
    }
  
  func testIPv4() {
    let ipv4 = "192.168.1.255"
    XCTAssertEqual(validIPAddress(ipv4), "IPv4")
    let ipv5 = "192.168.1.1.1"
    XCTAssertEqual(validIPAddress(ipv5), "Neither")
    let ipv3 = "192.168.1"
    XCTAssertEqual(validIPAddress(ipv3), "Neither")
  }
  
  func testIPv6() {
    let ipv6 = "2001:0000:3238:DFE1:0063:0000:0000:FEFB"
    XCTAssertEqual(validIPAddress(ipv6), "IPv6")
    let ipv5 = "192:168:1:1.1"
    XCTAssertEqual(validIPAddress(ipv5), "Neither")
    let ipv3 = "2001:3238:DFE1:0063:0000:0000:FEFB"
    XCTAssertEqual(validIPAddress(ipv3), "Neither")
  }
  
  func testIPv6Two() {
    let ipv6 = "2001:0db8:85a3:0:0:8A2E:0370:7334:"
    XCTAssertEqual(validIPAddress(ipv6), "Neither")
  }

    static var allTests = [
        ("testExample", testExample),
    ]
}
