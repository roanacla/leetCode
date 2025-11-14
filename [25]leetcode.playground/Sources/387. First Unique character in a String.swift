//
//  387. First Unique character in a String.swift

// Given a string s, find the first non-repeating character in it and return its index. If it does not exist, return -1
// Constraints:
//
// 1 <= s.length <= 105
// s consists of only lowercase English letters.
public class Problem_387: Runner {
    
    public init() {}
    
    func firstUniqChar(_ s: String) -> Int {
        var characterStorage: [Character: Int] = [:]
        
        for char in s {
            characterStorage[char, default: 0] += 1
        }

        for char in s {
            if characterStorage[char] == 1 {
                return s.distance(from: s.startIndex, to: s.firstIndex(of: char)!)
            }
        }
        return -1
    }
    
    public func runCode() {
        print("387. First Unique character in a string")
        print(firstUniqChar("leetcode") == 0 ? "Passed" : "Failed")
        print(firstUniqChar("loveleetcode") == 2 ? "Passed" : "Failed")
        print(firstUniqChar("aabb") == -1 ? "Passed" : "Failed")
    }
}
