import XCTest
@testable import camelize

final class camelizeTests: XCTestCase {
  var trie = Trie<String>()
  
  override func setUp() {
    //    trie.insert("hell")
    trie.insert("hello")
    trie.insert("a")
    trie.insert("any")
    trie.insert("one")
    trie.insert("there")
    trie.insert("here")
    trie.insert("hi")
    trie.insert("the")
    trie.insert("reach")
    trie.insert("fire")
    trie.insert("place")
    trie.insert("hat")
    trie.insert("chair")
    trie.insert("audible")
  }
  
  func testHelloAnyOneThere() {
    let result = camelize(string: "helloanyonethere", trie: trie)
    XCTAssertEqual(result.word, "HelloAnyOneThere")
    XCTAssertEqual(result.isCamelized, true)
  }
  
  func testHiThere() {
    let result = camelize(string: "hithere", trie: trie)
    XCTAssertEqual(result.word, "HiThere")
    XCTAssertEqual(result.isCamelized, true)
  }
  
  func testTheReach() {
    let result = camelize(string: "thereach", trie: trie)
    XCTAssertEqual(result.word, "TheReach")
    XCTAssertEqual(result.isCamelized, true)
  }
  
  func testFirePlace() {
    let result = camelize(string: "fireplace", trie: trie)
    XCTAssertEqual(result.word, "FirePlace")
    XCTAssertEqual(result.isCamelized, true)
  }
  
  func testHat() {
    let result = camelize(string: "hat", trie: trie)
    XCTAssertEqual(result.word, "Hat")
    XCTAssertEqual(result.isCamelized, true)
  }
  
  func testChair() {
    let result = camelize(string: "chair", trie: trie)
    XCTAssertEqual(result.word, "Chair")
    XCTAssertEqual(result.isCamelized, true)
  }
  
  func testChar() {
    let result = camelize(string: "char", trie: trie)
    XCTAssertEqual(result.word, "char")
    XCTAssertEqual(result.isCamelized, false)
  }
  
  func testThe() {
    let result = camelize(string: "the", trie: trie)
    XCTAssertEqual(result.word, "The")
    XCTAssertEqual(result.isCamelized, true)
  }
  
  func testA() {
    let result = camelize(string: "a", trie: trie)
    XCTAssertEqual(result.word, "A")
    XCTAssertEqual(result.isCamelized, true)
  }
  
  static var allTests = [
    ("testExample", testHelloAnyOneThere),
  ]
}
