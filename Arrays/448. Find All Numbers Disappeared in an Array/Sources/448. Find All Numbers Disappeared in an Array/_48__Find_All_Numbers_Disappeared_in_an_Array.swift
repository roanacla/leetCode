//Time complexity O(2n) -> two passes
//Space complexity O(1) -> inplace detection

func findDisappearedNumbers(_ nums: [Int]) -> [Int] {
  var nums = nums
  var result: [Int] = []
  for i in 0..<nums.count {
    let num = abs(nums[i])
    if nums[num-1] > 0 {
      nums[num-1] = nums[num-1] * -1
    }
  }
  for i in 0..<nums.count {
    if nums[i] > 0 {
      result.append(i+1)
    }
  }
  return result
}

//O(n) with extra space complexity of O(2n)
//func findDisappearedNumbers(_ nums: [Int]) -> [Int] {
//  guard !nums.isEmpty else { return nums }
//  var setNums = Set(nums)
//  var result: [Int] = []
//
//  for num in 1...nums.count {
//    if !setNums.contains(num) {
//      result.append(num)
//    }
//  }
//
//  return result
//
//}

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
