//
//  494. Target Sum.swift
//  
//
//  Created by Roger Navarro Claros on 9/23/25.
//

public class Problem_494: Runner {
    func findTargetSumWays(_ nums: [Int], _ target: Int) -> Int {
        guard nums.count > 0 else { return target == 0 ? 1 : 0 }
        var nums = nums
        let last = nums.popLast()!
        return findTargetSumWays(nums, target + last) + findTargetSumWays(nums, target - last)
    }
    
    func findTargetSumWaysTwo(_ nums: [Int], _ target: Int) -> Int {
        struct Key: Hashable { let n: Int; let t: Int }
        var memo: [Key: Int] = [:]
        
        func go(_ nums: [Int], _ target: Int) -> Int {
            guard nums.count > 0 else { return target == 0 ? 1 : 0 }
            let key = Key(n: nums.count, t: target)
            if let value = memo[key] { return value }
            var nums = nums
            let last = nums.popLast()!
            let result = go(nums, target + last) + go(nums, target - last)
            memo[key] = result
            return result
        }
        
        return go(nums, target)
    }
    
    public func runCode() {
        print("494. Target Sum")
        let nums = [1, 1, 1, 1, 1]
        let target = 3
        let expected = 5
        let result = findTargetSumWays(nums, target)
        print(result == expected ? "Passed" : "Failed — got \(result), expected \(expected)")
    }
}
