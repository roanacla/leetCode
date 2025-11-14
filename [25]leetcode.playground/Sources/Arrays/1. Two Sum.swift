//
//  1. Two Sum.swift

//  Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.
//
//  You may assume that each input would have exactly one solution, and you may not use the same element twice.
//
//  You can return the answer in any order.

public class Problem_1: Runner {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var result = [-1,-1]
        var index = 0
        var visitedValues: [Int: Int] = [:]
        
        while index < nums.count {
            let current = nums[index]
            let toFind = target - current
            if let visitedIndex = visitedValues[toFind] {
                result = [visitedIndex, index]
                break
            } else {
                visitedValues[current] = index
                index += 1
            }
        }
        return result
    }
    
    public func runCode() {
        print("1. Two Sum")
        let nums = [2, 7, 11, 15]
        let target = 9
        print("\(twoSum(nums, target) == [0, 1] ? "Passed" : "Failed")")
    }
}
