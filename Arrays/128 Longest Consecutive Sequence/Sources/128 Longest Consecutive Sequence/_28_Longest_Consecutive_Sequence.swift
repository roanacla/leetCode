func longestConsecutive(_ nums: [Int]) -> Int {
  guard !nums.isEmpty else { return 0 }
  var longest = 1
  let setNums = Set(nums)
  
  for num in nums {
    if !setNums.contains(num - 1) {
      var counter = 1
      var nextNumber = num + 1
      while setNums.contains(nextNumber) {
        counter += 1
        nextNumber += 1
      }
      if longest < counter {
        longest = counter
      }
    }
  }
  
  return longest
}
