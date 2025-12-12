//Given an integer array nums and an integer k, return the k most frequent elements. You may return the answer in any order.
//
// 
//
//Example 1:
//
//Input: nums = [1,1,1,2,2,3], k = 2
//
//Output: [1,2]
//
//Example 2:
//
//Input: nums = [1], k = 1
//
//Output: [1]
//
//Example 3:
//
//Input: nums = [1,2,1,2,1,2,3,1,3,2], k = 2
//
//Output: [1,2]
//

class Solution {
    func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
        var dict = nums.reduce(into: [Int: Int](), { (dict, value) in dict[value, default: 0] += 1  })
        var sortedByValue = dict.sorted(by: { $0.1 > $1.1 }).map {$0.0}
        
        var result: [Int] = []
        for i in 0..<k {
            result.append(sortedByValue[i])
        }

        return result
    }
}
