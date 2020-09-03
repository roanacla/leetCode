import Foundation

class Solution {
  func lengthOfLongestSubstring(_ s: String) -> Int {
    var longestLengt = ""
    var memory = ""
    
    for char in s {
      if longestLengt.contains(char) {
        if let firstAppearenceIndex = longestLengt.firstIndex(of: char) {
          longestLengt.removeSubrange(longestLengt.startIndex...firstAppearenceIndex)
          longestLengt += String(char)
        }
      } else {
        longestLengt += String(char)
      }
      if longestLengt.count >= memory.count {
        memory = longestLengt
      }
    }
    return memory.count
  }
}

let input = "abcabcbb"
Solution().lengthOfLongestSubstring(input)
