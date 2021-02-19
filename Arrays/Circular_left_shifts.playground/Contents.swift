import Foundation

func countStrings(s: String) -> Int {
  var lo = s.startIndex
  var hi = s.index(before: s.endIndex)
  
  var times = 0
  var result = 0
  
  while times < s.count {
    let charA = s[lo]
    let charB = s[hi]
    result += charA == charB ? 1 : 0
    hi = lo
    lo = s.index(after: lo)
    times += 1
  }
  
  return result
}

let s = "accbb"
countStrings(s: s)
