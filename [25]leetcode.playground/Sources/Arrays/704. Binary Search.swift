//
//  704. Binary Search.swift
//Given an array of integers nums which is sorted in ascending order, and an integer target, write a function to search target in nums. If target exists, then return its index. Otherwise, return -1.
//
//You must write an algorithm with O(log n) runtime complexity.
//

public class Problem_704: Runner {
    public func search(_ nums: [Int], _ target: Int) -> Int {
        guard nums.count > 0 else { return -1 }
        var leftBound = 0
        var rightBound = nums.count - 1
        
        while leftBound <= rightBound {
            let midPosition = (rightBound + leftBound) / 2
            let currentValue = nums[midPosition]
            if currentValue == target {
                return midPosition
            } else if target < currentValue {
                rightBound = midPosition - 1
            } else {
                leftBound = midPosition + 1
            }
        }
        
        return -1
    }
    
    public func runCode() {
        print("704. Binary Search")
        print(search([-1,0,3,5,9,12], 9) == 4 ? "Passed": "Failed")
        print(search([-1,0,3,5,9,12], 2) == -1 ? "Passed": "Failed")
        
    }
}
