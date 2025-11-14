//Given an integer array nums, handle multiple queries of the following type:
//
//Calculate the sum of the elements of nums between indices left and right inclusive where left <= right.
//Implement the NumArray class:
//
//NumArray(int[] nums) Initializes the object with the integer array nums.
//int sumRange(int left, int right) Returns the sum of the elements of nums between indices left and right inclusive (i.e. nums[left] + nums[left + 1] + ... + nums[right]).

public class Problem_303: Runner {
    
    
    public init() {
        
    }
    // input: [-2, 0, 3, -5, 2, -1] | [2,5]
    // -1
    // [0, 2]
    // output: [2,-2,1,-4,-2,-3]
    
    var results: [Int] = [0]
        
    init(_ nums: [Int]) {
        var total = 0
        for index in 0..<nums.count {
            total += nums[index]
            results.append(total)
        }
    }
    
    func sumRange(_ left: Int, _ right: Int) -> Int {
        return results[right + 1] - results[left]
    }
    
    public func runCode() {

    }
}



