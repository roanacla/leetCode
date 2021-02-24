
func majorityElement(_ nums: [Int]) -> Int {
guard nums.count > 1 else { return nums[0] }
let middle = nums.count / 2
var dic : [Int: Int] = [:]

for num in nums {
  if dic[num] != nil {
    dic[num]! += 1
    if dic[num]! > middle {
      return num
    }
  } else {
    dic[num] = 1
  }
}
return -1
}
//Alternative solution

func majorityElementTwo(_ nums: [Int]) -> Int {
let middle = nums.count / 2
let nums = nums.sorted()
return nums[middle]
}
