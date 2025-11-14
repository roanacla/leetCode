//
//  Untitled.swift
//  
//
//  Created by Roger Navarro Claros on 9/23/25.
//

public class Problem_9: Runner {
    func isPalindrome(_ x: Int) -> Bool {
        guard x >= 0 else { return false }
        let sNum = String(x)
        var leftIndex = sNum.startIndex
        var rightIndex = sNum.index(before: sNum.endIndex)
        
        while leftIndex < rightIndex {
            let leftChar = sNum[leftIndex]
            let rightChar = sNum[rightIndex]
            if leftChar != rightChar {
                return false
            }
            leftIndex = sNum.index(after: leftIndex)
            rightIndex = sNum.index(before: rightIndex)
        }
        
        return true
    }
    
    public func runCode() {
        print("9. Palindrome Number")
        print("\(isPalindrome(121) == true ? "Passed" : "Failed")")
        print("\(isPalindrome(-121) == false ? "Passed" : "Failed")")
        print("\(isPalindrome(10) == false ? "Passed" : "Failed")")
        print("\(isPalindrome(0) == true ? "Passed" : "Failed")")
    }
}
