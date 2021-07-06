func isAnagram(_ s: String, _ t: String) -> Bool {
  let s = s.sorted()
  let t = t.sorted()
  
  return s == t
}

//Improvement to increase performance
func isAnagramTwo(_ s: String, _ t: String) -> Bool {
  var i = 0
  var result: UInt8 = 0
  let word = Array(s + t)
  while i < word.count {
    let char = word[i]
    let asciiVal = char.asciiValue!
    result ^= asciiVal
    i += 1
  }
  guard result == 0 else { return false }
  let s = s.sorted()
  let t = t.sorted()
  
  return s == t
}
