import Foundation

//func sortedSquares(_ nums: [Int]) -> [Int] {
//  var nums = nums
//  for index in 0..<nums.count {
//    nums[index] = nums[index]^2
//  }
//  return nums.sorted()
//}

func sortedSquares(_ nums: [Int]) -> [Int] {
  var totalItems = nums.count
  var result = [Int](repeating: 0, count: totalItems)
  
  var left = 0
  var right = totalItems - 1
  
  for i in (0..<nums.count).reversed() {
    var square = 0
    if abs(nums[left]) < abs(nums[right]) {
      square = nums[right]
      right -= 1
    } else {
      square = nums[left]
      left += 1
    }
    result[i] = square * square
  }
  
  return result
}
