//
//  977. Squares of a softed array.swift
//  
public class Problem_977: Runner {
    func sortedSquares(_ nums: [Int]) -> [Int] {
        var leftEdge = 0
        var rightEdge = nums.count - 1
        
        var index = rightEdge
        var result = nums
        
        while 0 <= index {
            if abs(nums[leftEdge]) > abs(nums[rightEdge]) {
                result[index] = nums[leftEdge] * nums[leftEdge]
                leftEdge += 1
            } else {
                result[index] = nums[rightEdge] * nums[rightEdge]
                rightEdge -= 1
            }
            index -= 1
        }
        
        return result
    }
    
    func sortedSquaresTwo(_ nums: [Int]) -> [Int] {
        var leftEdge = 0
        var rightEdge = nums.count - 1
        var index = rightEdge
        var result: [Int] = Array(repeating: 0, count: nums.count)
        
        while 0 <= index {
            if abs(nums[leftEdge]) < abs(nums[rightEdge]) {
                result[index] = nums[rightEdge] * nums[rightEdge]
                rightEdge -= 1
            } else {
                result[index] = nums[leftEdge] * nums[leftEdge]
                leftEdge += 1
            }
            index -= 1
        }
        
        return result
    }
    
    public func runCode() {
        print("977. Squares of a Sorted Array")
        let nums = [-4, -1, 0, 3, 10]
        let expected = [0, 1, 9, 16, 100]
        print("\(sortedSquares(nums) == expected ? "Passed" : "Failed")")
    }
}
