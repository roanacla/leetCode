
func containsDuplicate(_ nums: [Int]) -> Bool {
  guard nums.count > 1 else { return false }
  let setOfNums = Set(nums)
  return setOfNums.count != nums.count
}

