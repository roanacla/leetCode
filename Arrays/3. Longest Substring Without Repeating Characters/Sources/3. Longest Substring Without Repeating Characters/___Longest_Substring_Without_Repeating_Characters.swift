class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        if s.isEmpty { return 0 }
        var counter = 0
        var j = 0
        var i = 0
        var characters: [Character: Int] = [:]
        var index = s.startIndex
        for c in s {
            if characters[c] == nil {
                characters[c] = j
            } else {
                i = max(characters[c]! + 1,i)
                characters[c] = j
                // characters = characters.filter { $0.value >= i  }
            }
            counter = max(j-i, counter)
            j += 1
        }
        
        return counter + 1
        
    }
}
