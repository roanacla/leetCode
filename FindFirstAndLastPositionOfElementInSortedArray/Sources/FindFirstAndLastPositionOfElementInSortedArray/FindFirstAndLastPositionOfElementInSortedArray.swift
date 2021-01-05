struct FindFirstAndLastPositionOfElementInSortedArray {
    var text = "Hello, World!"
}

func searchRange(_ nums: [Int], _ target: Int) -> [Int] {
  if nums.isEmpty { return [ -1, -1] }
  return [nums.firstIndex {$0 == target} ?? -1, nums.lastIndex {$0 == target} ?? -1]
}
