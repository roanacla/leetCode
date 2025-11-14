//
//  448. Find all numbers disappeared in an Array.swift
//  
//
//  Created by rognavar on 8/19/25.
//
public class Problem_448: Runner {
    
    public init() {}
    
    public func findAllNumbersInADissapeared(_ nums: [Int]) -> [Int] {
        // get the array size
        let arraySize = nums.count // o(1)
        // convert the array to a set
        let numsSet = Set(nums) // o(n)
        // iterate trough the array
        var result: [Int] = []
        for num in 1...arraySize { // o(n)
            // // include missing numbers in result array
            if !numsSet.contains(num) {
                result.append(num)
            }
        }
        return result
    }
    
    public func findAllNumbersInADissapearedTwo(_ nums: [Int]) -> [Int] {
        
        return []
    }
    
    public func runCode() {
        print("448. Find all numbers disappeared in an Array")
        print("Algo with sort:")
        print(findAllNumbersInADissapeared([4,3,2,7,8,2,3,1]) == [5,6] ? "Passed" : "Failed")
        print(findAllNumbersInADissapeared([1,1]) == [2] ? "Passed" : "Failed")
    }
}
