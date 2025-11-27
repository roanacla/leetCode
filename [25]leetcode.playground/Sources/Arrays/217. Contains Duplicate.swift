//
//  217. Contains Duplicate.swift
//  
//
//  Created by rognavar on 8/19/25.
//

public class Problem_217: Runner {
    
    public init() {}
    
    //Problem solved on Nov 27
    func containsDuplicateTwo(_ nums: [Int]) -> Bool {
        let set = Set(nums)
        return set.count != nums.count
    }
    
    public func containsDuplicate(_ nums: [Int]) -> Bool {
            let arrayCount = nums.count
            let setCount = Set(nums).count

            return !(arrayCount == setCount)
        }
    
    public func findAllNumbersInADissapearedTwo(_ nums: [Int]) -> [Int] {
        
        return []
    }
    
    public func runCode() {
        print("217. Contains Duplicate")
        print("Given an integer array nums, return true if any value appears at least twice in the array, and return false if every element is distinct.")
        print(containsDuplicate([4,3,2,7,8,2,3,1]) == true ? "Passed" : "Failed")
        print(containsDuplicate([1,2,3,1]) == true ? "Passed" : "Failed")
        print(containsDuplicate([1,2,3,4]) == false ? "Passed" : "Failed")
        print(containsDuplicate([1,1]) == true ? "Passed" : "Failed")
        print(containsDuplicate([1,1,1,3,3,4,3,2,4,2]) == true ? "Passed" : "Failed")
    }
}

