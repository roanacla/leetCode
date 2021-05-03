func findDuplicates(_ nums: [Int]) -> [Int] {
  var nums = nums
  var result = [Int]()
  var i = 0
  while i < nums.count {
    if nums[abs(nums[i]) - 1] < 0 {
      result.append(abs(nums[i]))
    }
    nums[abs(nums[i]) - 1] *= -1
    i += 1
  }
  
  return result
}
