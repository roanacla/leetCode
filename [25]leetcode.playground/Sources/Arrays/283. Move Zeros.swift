//
//  283. Move Zeros.swift
//  
//
//  Created by Roger Navarro Claros on 9/6/25.
//

//Given an integer array nums, move all 0's to the end of it while maintaining the relative order of the non-zero elements.
//
//Note that you must do this in-place without making a copy of the array.
//
public class Problem_283: Runner {
    func moveZeroes(_ nums: inout [Int]) {
        var zeroIndex = 0
        var headIndex = 1
        
        while headIndex < nums.count {
            let frontNum = nums[headIndex]
            let backNum = nums[zeroIndex]
            if backNum == 0 && frontNum != 0 {
                nums[zeroIndex] = frontNum
                nums[headIndex] = backNum
            } else if backNum == 0 && frontNum == 0 {
                headIndex += 1
            } else if backNum != 0 && frontNum != 0 {
                zeroIndex += 1
                headIndex += 1
            } else if backNum != 0 && frontNum == 0 {
                zeroIndex += 1
            }
        }
    }
    // func moveZeroes(_ nums: inout [Int]) {
    //     var result: [Int] = []
    //     var count = 0
    //     for num in nums {
    //         if num != 0 {
    //             result.append(num)
    //         } else {
    //             count += 1
    //         }
    //     }
    //     for i in 0..<count {
    //         result.append(0)
    //     }
    //     nums = result
    // }
    
    public func runCode() {
        print("283. Move Zeros")
        var nums = [0,1,0,3,12]
        moveZeroes(&nums)
        print("\(nums == [1,3,12,0,0] ? "Passed" : "Failed")")
    }
}
