func search(_ nums: [Int], _ target: Int) -> Int {
  guard !nums.isEmpty else { return -1 }
  return search(nums, target, nums.startIndex..<nums.endIndex)
}

func search(_ nums: [Int], _ target: Int, _ range: Range<Int>) -> Int {
  guard range.lowerBound < range.upperBound else { return -1 }
  let middleIndex = nums.index(range.lowerBound, offsetBy: range.count/2)
  
  if nums[middleIndex] == target {
    return middleIndex
  } else if nums[middleIndex] > target {
    return search(nums, target, range.lowerBound..<middleIndex)
  } else {
    return search(nums, target, nums.index(after: middleIndex)..<range.upperBound)
  }
}
