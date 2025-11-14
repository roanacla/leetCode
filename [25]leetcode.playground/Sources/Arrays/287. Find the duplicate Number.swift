//
//  287. Find the duplicate Number.swift
//  
//
//  Created by Roger Navarro Claros on 10/1/25.
//

public class Problem_287: Runner {
    func findDuplicate(_ nums: [Int]) -> Int {
        var countArray = Array(repeating: 0, count: nums.count + 1)
        var result = 0
        for num in nums {
            let index = num
            countArray[index] += 1
            if countArray[index] > 1 {
                result = index
                break
            }
        }
        return result
    }
    
    public func runCode() {
        print("287. Find the Duplicate Number")
        
        let nums1 = [1,3,4,2,2]
        print("\(findDuplicate(nums1) == 2 ? "Passed" : "Failed")")
        
        let nums2 = [3,1,3,4,2]
        print("\(findDuplicate(nums2) == 3 ? "Passed" : "Failed")")
        
        let nums3 = [3,3,3,3,3]
        print("\(findDuplicate(nums3) == 3 ? "Passed" : "Failed")")
    }
}
