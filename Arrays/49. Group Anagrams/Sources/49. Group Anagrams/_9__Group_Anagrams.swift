struct _9__Group_Anagrams {
  var text = "Hello, World!"
}

class Solution {
  func groupAnagrams(_ strs: [String]) -> [[String]] {
    var dict: [[Character: Int]: [String]] = [:]
    
    for string in strs {
      var key: [Character: Int] = [:]
      for char in string {
        key[char, default: 0] += 1
      }
      dict[key, default: []].append(string)
    }
    
    return Array(dict.values)
  }
}

// Other solution:

class SolutionTwo {
    func groupAnagrams(_ strs: [String]) -> [[String]] {
        var dict: [String: [String]] = [:]
        
        for word in strs {
            let key = String(Array(word).sorted())
            dict[key, default: []].append(word)
        }
        return dict.map{$0.value}
    }
}
