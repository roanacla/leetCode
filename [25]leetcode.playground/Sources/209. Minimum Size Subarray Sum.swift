//
//  209. Minimum Size Subarray Sum.swift
//  
//
//  Created by Roger Navarro Claros on 8/27/25.
//

public class Problem_209: Runner {
    
    public init() {}
    // [2,3,1,2,4,3] target: 7
    func minSubArrayLen(_ target: Int, _ nums: [Int]) -> Int {
        guard nums.reduce(0, +) >= target else { return 0 }
        guard nums.count > 1 else { return 1 }
        guard nums[0] <= target else { return 1 }
        var leftEdge = 0
        var rightEdge = 1
        
        var sum = nums[leftEdge] + nums[rightEdge]//6
        var narrowestWindowSize = nums.count
        while rightEdge < nums.count && leftEdge < nums.count {
            if sum >= target {
                narrowestWindowSize = min(rightEdge - leftEdge + 1, narrowestWindowSize)
                if narrowestWindowSize == 1 { break }
                sum -= nums[leftEdge]
                leftEdge += 1
            } else {
                rightEdge += 1
                if rightEdge < nums.count {
                    sum += nums[rightEdge]
                }
            }
        }
        
        return narrowestWindowSize
    }
    
    public func runCode() {
        print("643. Missing Number")
        print(minSubArrayLen(7, [2,3,1,2,4,3]) == 2 ? "Passed" : "Failed")
        print(minSubArrayLen(4, [1,4,4]) == 1 ? "Passed" : "Failed")
        print(minSubArrayLen(11, [1,1,1,1,1,1,1,1]) == 0 ? "Passed" : "Failed")
        print("error:")
        print(minSubArrayLen(5, [2,3,1,1,1,1,1]) == 2 ? "Passed" : "Failed")
    }
}
