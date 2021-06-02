struct _5__3Sum {
    var text = "Hello, World!"
}

class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [[Int]] {
        // key: num, value: times it appears
        guard nums.count >= 2 else { return [] }
        var visited: Set<Int> = []
        var result: [[Int]] = []
        
        for i in 0..<nums.count {
            let current = nums[i]
            var secondNum = target - current
            if visited.contains(secondNum) {
                let ans = [secondNum, current]
                result.append(ans)
            }
            visited.insert(current)
        }
        
        return result
    }
    
    func threeSum(_ nums: [Int]) -> [[Int]] {
        guard nums.count >= 3 else { return [] }
        var result: [[Int]] = []
        var nums = nums.sorted()
        var last: Int?
        for i in 0..<nums.count - 2 {
            let current = nums[i]
            if current > 0 { break }
            if last != nil && last! == current { continue }
            let target = current * -1
            let subNums = Array(nums[(i+1)...])
            let twoSumResults = twoSum(subNums, target)
            for twoSumResult in twoSumResults {
                let sortResult = [current,twoSumResult[0], twoSumResult[1]]
                if result.count == 0 {
                    result.append(sortResult)
                } else if result[result.count - 1] != sortResult {
                    result.append(sortResult)
                }
            }
            last = current
        }
        
        return result
    }
}
