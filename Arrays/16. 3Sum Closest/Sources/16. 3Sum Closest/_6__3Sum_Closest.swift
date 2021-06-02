struct _6__3Sum_Closest {
  var text = "Hello, World!"
}

class Solution {
  
  var diff = Int.max
  var sum = 0
  func threeSumClosest(_ nums: [Int], _ target: Int) -> Int {
    if nums.count < 3 {
      return 0
    }
    
    var nums = nums
    nums.sort { $0 < $1 }
    
    for i in 0..<nums.count-2 {
      let newTarget = target - nums[i]
      let end = nums.count - 1
      let start = i + 1
      twoSumCloset(start, end, nums[i], nums, newTarget)
    }
    return sum
  }
  
  func twoSumCloset(_ start: Int, _ end: Int, _ num: Int, _ nums: [Int], _ target: Int) {
    var start = start
    var end = end
    while start < end {
      let distance = abs(nums[start] + nums[end] - target)
      if distance < diff {
        sum = nums[start] + nums[end] + num
        diff = distance
      }
      
      if nums[start] + nums[end] < target {
        start += 1
      }
      else {
        end -= 1
      }
    }
  }
}
