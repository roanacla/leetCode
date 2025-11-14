//
//  128. Longest Consecutive Sequence.swift
//  
//
//  Created by Roger Navarro Claros on 10/20/25.
//

public class Problem_128: Runner {
    func longestConsecutive(_ nums: [Int]) -> Int {
        var set = Set(nums)
        var maxCounter = 0
        for num in nums {
            if set.contains(num) {
                var counter = 1
                set.remove(num)
                counter += longestConsecutive(num, &set)
                maxCounter = max(maxCounter, counter)
            }
        }
        return maxCounter
    }
    
    func longestConsecutive(_ num: Int, _ set: inout Set<Int>) -> Int {
        var counter = 0
        for symbol in ["+", "-"] {
            var num = num
            num += symbol == "+" ? 1 : -1
            while set.contains(num) {
                counter += 1
                set.remove(num)
                num += symbol == "+" ? 1 : -1
            }
        }
        return counter
    }
    
    public func runCode() {
        print(longestConsecutive([100,4,200,1,3,2]) == 4 ? "✅" : "❌")
        print(longestConsecutive([0,3,7,2,5,8,4,6,0,1]) == 9 ? "✅" : "❌")
        print(longestConsecutive([1,0,1,2]) == 3 ? "✅" : "❌")
    }
}
