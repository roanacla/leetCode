class Solution {  
  var count = 0
  
  
  func findTargetSumWays(_ nums: [Int], _ S: Int) -> Int {
    helper(nums, 0, 0, S)
    return count
  }
  
  func helper(_ nums: [Int], _ index: Int, _ sum: Int, _ target: Int) {
    if (index == nums.count) {
      if sum == target {
        count += 1
      }
    } else {
      helper(nums, index + 1, sum + nums[index], target)
      helper(nums, index + 1, sum - nums[index], target)
    }
  }
}
