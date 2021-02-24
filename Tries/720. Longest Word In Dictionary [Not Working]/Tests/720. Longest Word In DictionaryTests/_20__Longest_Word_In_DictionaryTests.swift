import XCTest
@testable import _20__Longest_Word_In_Dictionary

final class _20__Longest_Word_In_DictionaryTests: XCTestCase {
    func testExample() {
      let words = ["w","wo","wor","worl","world"]
//      let words = ["a", "banana", "app", "appl", "ap", "apply", "apple"]
      let longest = longestWord(words)
      print(longest)
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
