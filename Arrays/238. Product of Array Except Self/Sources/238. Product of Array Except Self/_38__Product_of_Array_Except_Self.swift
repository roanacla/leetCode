func productExceptSelf(_ nums: [Int]) -> [Int] {
  var leftResults = [Int]()
  var results = [Int]()
  
  leftResults.append(1)
  for i in 1..<nums.count {
    leftResults.append(leftResults[i - 1] * nums[i - 1])
  }
  
  var rightResults = leftResults
  rightResults[nums.count - 1] = 1
  for i in (0..<nums.count - 1).reversed() {
    rightResults[i] = rightResults[i + 1] * nums[i + 1]
  }
  
  
  for i in 0..<nums.count {
    results.append(leftResults[i] * rightResults[i])
  }
  
  return results
}
