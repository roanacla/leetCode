//
//  169. Majority Element.swift
//  
//
//  Created by Roger Navarro Claros on 8/26/25.
//

// 169. Majority Element
//Given an array nums of size n, return the majority element.
//
//The majority element is the element that appears more than ⌊n / 2⌋ times. You may assume that the majority element always exists in the array.


//Constraints:
//
//n == nums.length
//1 <= n <= 5 * 10^4
//-10^9 <= nums[i] <= 10^9

public class Problem_169: Runner {
    
    public init() {}
    
    func majorityElement(_ nums: [Int]) -> Int {
        var dic: [Int: Int] = [:]
        dic.reserveCapacity(2)
        let count = nums.count / 2 + 1
        for num in nums {
            if dic[num] == nil {
                dic[num] = 1
            } else {
                dic[num] = dic[num]! + 1
            }
        }
        guard dic.count > 1 else { return dic.first!.key }
        return dic.max(by: { $0.value < $1.value })!.key
    }
    
    func majorityElementTwo(_ nums: [Int]) -> Int {
        var sortedNums = nums.sorted()
        let midPoint = nums.count / 2
        return sortedNums[midPoint]
    }
    
    
    public func runCode() {
        print("169. Majority Element")
        print(majorityElement([3,2,3]) == 3 ? "Passed" : "Failed")
        print(majorityElement([2,2,1,1,1,2,2]) == 2 ? "Passed" : "Failed")
    }
}
