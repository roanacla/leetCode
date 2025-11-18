//
//  5. Longest Palindromic substring.swift
//  
//
//  Created by Roger Navarro Claros on 11/17/25.
//

class Problem_5 {
    
    // More efficient
    func longestPalindrome(_ s: String) -> String {
        let s = Array(s)     // allows s[i] indexing like Python
        var res = ""
        var resLen = 0
        
        for i in 0..<s.count {
            print("round:\(i)")
            // ------------------------------------
            // ODD length palindrome (center at i)
            // ------------------------------------
            var l = i
            var r = i
            while l >= 0 && r < s.count && s[l] == s[r] {
                print("Odd: " + String(s[l...r]))
                if (r - l + 1) > resLen {
                    print("Odd case")
                    print(String(s[l...r]))
                    res = String(s[l...r])
                    resLen = r - l + 1
                }
                l -= 1
                r += 1
            }
            
            // ------------------------------------
            // EVEN length palindrome (center between i and i+1)
            // ------------------------------------
            l = i
            r = i + 1
            while l >= 0 && r < s.count && s[l] == s[r] {
                print("Even: " + String(s[l...r]))
                if (r - l + 1) > resLen {
                    print("Even case")
                    print(String(s[l...r]))
                    res = String(s[l...r])
                    resLen = r - l + 1
                }
                l -= 1
                r += 1
            }
        }
        
        return res
    }
    
    func longestPalindromeTwo(_ s: String) -> String { // Not to efficient
        var startIndex = s.startIndex
        var endIndex = s.startIndex
        var longestString = ""
        while startIndex < s.endIndex {
            while endIndex < s.endIndex {
                if isPalindrome(s, startIndex, endIndex) {
                    if longestString.count < String(s[startIndex...endIndex]).count {
                        longestString = String(s[startIndex...endIndex])
                    }
                }
                endIndex = s.index(after: endIndex)
            }
            startIndex = s.index(after: startIndex)
            guard let index = s.index(startIndex, offsetBy: longestString.count, limitedBy: s.endIndex) else { break }
            endIndex = index
        }

        return longestString
    }

    func isPalindrome(_ s: String, _ startIndex: String.Index, _ endIndex: String.Index) -> Bool {
        var startIndex = startIndex
        var endIndex = endIndex
        while startIndex < endIndex {
            if s[startIndex] != s[endIndex] {
                return false
            }
            startIndex = s.index(after: startIndex)
            endIndex = s.index(before: endIndex)
        }

        return true
    }
}
