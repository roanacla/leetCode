//Given two strings s1 and s2, return true if s2 contains a permutation of s1, or false otherwise.
//
//In other words, return true if one of s1's permutations is the substring of s2.

//Constraints:
//
//1 <= s1.length, s2.length <= 104
//s1 and s2 consist of lowercase English letters.


public class Problem_567: Runner {
    public init() {}
    //"eidbaooo"
    public func checkInclusion(_ s1: String, _ s2: String) -> Bool {
        guard s1.count <= s2.count else { return false }
        if s2.count == 1 { return s2.first! == s1.first! }
        
        var leftEdgeIndex = s1.startIndex
        var rightEdgeIndex = s1.index(before: s1.endIndex)
        
        var s1Dict: [Character: Int] = [:]
        var s2Dict: [Character: Int] = [:]
        for letter in "abcdefghijklmnopqrstuvwxyz" {
            s1Dict[letter] = 0
            s2Dict[letter] = 0
        }
        for char in s1 {
            s1Dict[char]! += 1
        }
        s2Dict[s2[leftEdgeIndex]]! += 1
        
        while rightEdgeIndex < s2.endIndex {
            if leftEdgeIndex != rightEdgeIndex {
                s2Dict[s2[rightEdgeIndex]]! += 1                
            }
            if s1Dict == s2Dict {
                return true
            } else {
                s2Dict[s2[leftEdgeIndex]]! -= 1
            }
            leftEdgeIndex = s2.index(after: leftEdgeIndex)
            rightEdgeIndex = s2.index(after: rightEdgeIndex)
            
        }
        
        return false
    }
    
    public func runCode() {
        var s1 = "ab"
        var s2 = "eidbaooo"
        print(checkInclusion(s1, s2) == true ? "Passed" : "Failed")
        s1 = "ab"
        s2 = "eidboaoo"
        print(checkInclusion(s1, s2) == false ? "Passed" : "Failed")
    }
}
