func missingNumber(_ nums: [Int]) -> Int {
  let expected = nums.count * (nums.count + 1) / 2
  let sum = nums.reduce(0,+)
  return expected - sum
}
