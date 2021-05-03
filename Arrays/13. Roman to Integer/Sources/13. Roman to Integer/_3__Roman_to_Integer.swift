
func romanToInt(_ s: String) -> Int {
  //Dictionary
  var romanDict: [String: Int] = ["I": 1,
                                  "IV": 4,
                                  "V": 5,
                                  "IX": 9,
                                  "X": 10,
                                  "XL": 40,
                                  "L": 50,
                                  "XC": 90,
                                  "C": 100,
                                  "CD": 400,
                                  "D": 500,
                                  "CM": 900,
                                  "M": 1000]
  var i = s.startIndex
  var result = 0
  while i < s.endIndex {
    let nextIndex = s.index(after:i)
    if nextIndex < s.endIndex, let value = romanDict[String([s[i],s[nextIndex]])] {
      result += value
      i = s.index(after: s.index(after: i))
    } else {
      let value = romanDict[String(s[i])]!
      result += value
      i = s.index(after: i)
    }
  }
  return result
}

