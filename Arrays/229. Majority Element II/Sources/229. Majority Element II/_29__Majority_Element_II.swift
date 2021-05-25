struct _29__Majority_Element_II {
    var text = "Hello, World!"
}

class Solution {
    func majorityElement(_ nums: [Int]) -> [Int] {
        let times = Double(nums.count) / 3.0
        print(times)
        var dict: [Int: Int] = [:] // [1: 0, 2: 2]
        var result: Set<Int> = []
        
        for num in nums {
            dict[num, default: 0] += 1
            if Double(dict[num]!) > times {
                result.insert(num)
            }
        }
        
        return Array(result)
        
    }
}
