
func containsDuplicate(_ nums: [Int]) -> Bool {
  func containsDuplicate(_ nums: [Int]) -> Bool {
    var nonDuplicates: Set<Int> = []
    for num in nums {
      if !nonDuplicates.contains(num) {
        nonDuplicates.insert(num)
      } else {
        return true
      }
    }
    return false
  }
}

