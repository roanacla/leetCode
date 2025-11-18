// Given a string s and a dictionary of strings wordDict, return true if s can be segmented into a space-separated sequence of one or more dictionary words.
//
// Note that the same word in the dictionary may be reused multiple times in the segmentation.
//
//
//
// Example 1:
//
// Input: s = "leetcode", wordDict = ["leet","code"]
// Output: true
// Explanation: Return true because "leetcode" can be segmented as "leet code".
// Example 2:
//
// Input: s = "applepenapple", wordDict = ["apple","pen"]
// Output: true
// Explanation: Return true because "applepenapple" can be segmented as "apple pen apple".
// Note that you are allowed to reuse a dictionary word.
// Example 3:
//
// Input: s = "catsandog", wordDict = ["cats","dog","sand","and","cat"]
// Output: false

class Problem_139 {
    //Dynamic programing
    
    func wordBreak(_ s: String, _ wordDict: [String]) -> Bool {
        var s = Array(s)
        var memo = Array(repeating: false, count: s.count + 1)
        memo[s.count] = true
        
        for i in (0..<s.count).reversed() {
            for word in wordDict {
                if i + word.count <= s.count && String(s[i..<(i + word.count)]) == word {
                    memo[i] = memo[i + word.count]
                }
                if memo[i] {
                    break
                }
            }
        }
        
        return memo[0]
    }
    
    func wordBreakDFS(_ s: String, _ wordDict: [String]) -> Bool {
        var s = Array(s)
        var wordDict = Set(wordDict)
        var visited: Set<Int> = []

        func helper(_ index: Int) -> Bool {
            guard !visited.contains(index) else { return false }
            var word = ""
            for i in index..<s.count {
                let char = s[i]
                word += String(char)
                if wordDict.contains(word) {
                    if (i + 1 == s.count) || (i + 1 < s.count && helper(i + 1)) {
                        return true
                    }
                }
            }
            visited.insert(index)
            return false
        }
        
        return helper(0)
    }
}
