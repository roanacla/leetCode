//O(n) with extra space complexity of O(2n)
func findDisappearedNumbers(_ nums: [Int]) -> [Int] {
  guard !nums.isEmpty else { return nums }
  var setNums = Set(nums)
  var result: [Int] = []

  for num in 1...nums.count {
    if !setNums.contains(num) {
      result.append(num)
    }
  }

  return result

}

//O(n)
//func findDisappearedNumbers(_ nums: [Int]) -> [Int] {
//        if nums.count > 1 {
//            var nums = nums
//            for i in 0..<nums.count {
//                let index = abs(nums[i]) - 1
//                if nums[index] > 0 {
//                    nums[index] = nums[index] * -1
//                }
//            }
//            var results : [Int] = []
//            for i in 1...nums.count {
//                if nums[i-1] > 0 {
//                    results.append(i)
//                }
//            }
//            return results
//        } else {
//            return nums
//        }
//   }
