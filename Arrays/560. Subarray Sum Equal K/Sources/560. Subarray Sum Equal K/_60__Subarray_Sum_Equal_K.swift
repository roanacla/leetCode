class Solution {
    func subarraySum(_ nums: [Int], _ k: Int) -> Int {
        var count = 0
        var sum = 0
        var dict: [Int:Int] = [:]
        
        dict[0] = 1
        for i in 0..<nums.count {
            sum += nums[i]
            if dict[sum - k] != nil {
                count += dict[sum - k]!
            }
            dict[sum] = dict[sum, default: 0] + 1
        }
        
        return count
    }
}
