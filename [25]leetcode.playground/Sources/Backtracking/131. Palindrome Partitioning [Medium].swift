//
//Given a string s, partition s such that every substring of the partition is a palindrome. Return all possible palindrome partitioning of s.
//
// 
//
//Example 1:
//
//Input: s = "aab"
//Output: [["a","a","b"],["aa","b"]]
//Example 2:
//
//Input: s = "a"
//Output: [["a"]]
class Problem_131 {
    func partition(_ s: String) -> [[String]] {
        var result: [[String]] = []
        var partition: [String] = []
        
        func dfs(_ i: Int) {
            if i >= s.count {
                result.append(partition)
            } else {
                for j in i..<s.count {
                    var start = s.index(s.startIndex, offsetBy: i)
                    var end = s.index(s.startIndex, offsetBy: j)
                    if isPalindrome(s, start, end) {
                        partition.append(String(s[start...end]))
                        dfs(j + 1)
                        partition.popLast()
                    }
                }
            }
        }
        
        dfs(0)
        
        return result
    }
    
    func isPalindrome(_ s: String, _ i: String.Index, _ j: String.Index) -> Bool {
        var start = i
        var end = j
        while start < end {
            if s[start] != s[end] {
                return false
            }
            start = s.index(after: start)
            end = s.index(before: end)
        }
        return true
    }
}
