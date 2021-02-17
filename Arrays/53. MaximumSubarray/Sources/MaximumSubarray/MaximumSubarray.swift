

func maxSubArray(_ nums: [Int]) -> Int {
  var max = Int.min
  var sum = 0
  
  for num in nums {
    sum += num
    max = max < sum ? sum : max
    if sum < 0 {
      sum = 0
    }
    
  }
  
  return max
}
