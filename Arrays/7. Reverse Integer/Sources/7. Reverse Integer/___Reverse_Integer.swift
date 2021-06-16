struct ___Reverse_Integer {
  var text = "Hello, World!"
}

class Solution {
  func reverse(_ x: Int) -> Int {
    var isNegative = x < 0 ? true : false
    
    var result = isNegative ? "-" : ""
    for char in "\(abs(x))".reversed() {
      result.append(char)
    }
    
    let intResult = Int(result)!
    
    if intResult > Int(Int32.max) || intResult < Int(Int32.min) {
      return 0
    }
    
    return intResult
  }
}
