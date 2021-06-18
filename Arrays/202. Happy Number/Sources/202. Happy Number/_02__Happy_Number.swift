struct _02__Happy_Number {
  var text = "Hello, World!"
}

class Solution {
  func isHappy(_ n: Int) -> Bool {
    
    func getNext(_ num: Int ) -> Int {
      var result = 0
      var num = num
      while num > 0 {
        let (quotient, remainder) = num.quotientAndRemainder(dividingBy: 10)
        result += remainder * remainder
        num = quotient
      }
      return result
    }
    
    var seen: Set<Int> = []
    var n = n
    while n != 1 && !seen.contains(n) {
      seen.insert(n)
      n = getNext(n)
    }
    
    return n == 1
    
  }
}
