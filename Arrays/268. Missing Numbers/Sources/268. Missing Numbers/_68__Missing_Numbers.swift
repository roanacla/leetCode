//func missingNumber(_ nums: [Int]) -> Int {
//  let numsSet = Set(nums)
//
//  for num in 0..<(nums.count + 1) {
//    if !numsSet.contains(num) {
//      return num
//    }
//  }
//
//  return 0
//}

func missingNumber(_ nums: [Int]) -> Int {
  let sum = nums.reduce(into: 0){ result, num in
    result += num
  }
  let count: Float = Float(nums.count)
  let total = (count / 2) * (count + 1)
  
  return Int(total) - sum
  
}
