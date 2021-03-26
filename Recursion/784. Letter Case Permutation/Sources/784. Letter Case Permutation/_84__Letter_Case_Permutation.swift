class Solution {
    func letterCasePermutation(_ S: String) -> [String] {
      var string = S
      var result = [String]()
      helper(&string, &result)
      return result
    }

    func helper(_ s: inout String, _ result: inout [String]) {
      if s.isEmpty { return }
      let last = s.removeFirst()
      var opposite: String? = nil
      if last.isLetter {
        opposite = last.isLowercase ? last.uppercased() : last.lowercased()
      }
      if result.isEmpty {
        result.append(String(last))
        if let opposite = opposite {
          result.append(opposite)
        }
        helper(&s, &result)
      } else {
        var index = 0
        while index < result.count {
          let temp = result[index]
          result[index] += String(last)
          if let opposite = opposite {
            index += 1
            result.insert(temp + opposite, at: index)
          }
          index += 1
        }
        helper(&s, &result)
      }

    }
}
