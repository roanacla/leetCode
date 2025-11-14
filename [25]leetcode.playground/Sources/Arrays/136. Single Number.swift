//136. Single Number
//Given a non-empty array of integers nums, every element appears twice except for one. Find that single one.
//You must implement a solution with a linear runtime complexity and use only constant extra space.

public class Problem_136: Runner {
    
    public init() {}
    
    func singleNumber(_ nums: [Int]) -> Int {
        // Create a dictionary with key as the number
        var dict: [Int: Int] = [:]
        for num in nums {
            if dict[num] == nil {
                dict[num] = 0
            } else {
                dict[num]! = 1
            }
        }
        var result = 0
        for (key, value) in dict {
            if value == 0 {
                result = key
                break
            }
            continue
        }
        return result
    }
    
    func singleNumberTwo(_ nums: [Int]) -> Int {
        var result = 0
        for num in nums {
            result ^= num
        }
        return result
    }
    
    public func runCode() {
        print("136. Single Number")
        print(singleNumber([4,1,2,1,2]) == 4 ? "Passed" : "Failed")
        print(singleNumber([2,2,1]) == 1 ? "Passed" : "Failed")
        print(singleNumber([1]) == 1 ? "Passed" : "Failed")
        print("version 2")
        print(singleNumberTwo([4,1,2,1,2]) == 4 ? "Passed" : "Failed")
        print(singleNumberTwo([2,2,1]) == 1 ? "Passed" : "Failed")
        print(singleNumberTwo([1]) == 1 ? "Passed" : "Failed")
    }
}
