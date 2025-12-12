// Given a string s, find the length of the longest substring without duplicate characters.
//
//
//
// Example 1:
//
// Input: s = "abcabcbb"
// Output: 3
// Explanation: The answer is "abc", with the length of 3. Note that "bca" and "cab" are also correct answers.
// Example 2:
//
// Input: s = "bbbbb"
// Output: 1
// Explanation: The answer is "b", with the length of 1.
// Example 3:
//
// Input: s = "pwwkew"
// Output: 3
// Explanation: The answer is "wke", with the length of 3.
// Notice that the answer must be a substring, "pwke" is a subsequence and not a substring.

class Problem_3 {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        var set: Set<Character> = []
        var characters = Array(s)
        var left = 0
        var right = 0
        var result = 0

        for right in 0..<characters.count {
            let char = characters[right]
            if !set.contains(char) {
                set.insert(char)
            } else {
                while left <= right {
                    set.remove(characters[left])
                    if characters[left] == char {
                        left += 1
                        break
                    }
                    left += 1
                }
                set.insert(char)
            }
            result = max(result, right - left + 1)
        }

        return result
    }
}
