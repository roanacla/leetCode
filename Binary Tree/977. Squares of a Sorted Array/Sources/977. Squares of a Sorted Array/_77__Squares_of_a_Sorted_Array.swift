import Foundation

//func sortedSquares(_ nums: [Int]) -> [Int] {
//  var nums = nums
//  for index in 0..<nums.count {
//    nums[index] = nums[index]^2
//  }
//  return nums.sorted()
//}

func sortedSquares(_ nums: [Int]) -> [Int] {
    var rightIndex = 0
    
    for num in nums {
      if num >= 0 {
        break
      } else {
        rightIndex += 1
      }
    }
    var leftIndex = rightIndex - 1
    var result: [Int] = []
    while rightIndex < nums.count {
        if leftIndex >= 0 && nums[leftIndex]*nums[leftIndex] < nums[rightIndex]*nums[rightIndex] {
          result.append(nums[leftIndex]*nums[leftIndex])
          leftIndex -= 1
        } else {
          result.append(nums[rightIndex]*nums[rightIndex])
          rightIndex += 1
        }
    }
    while leftIndex >= 0 {
      result.append(nums[leftIndex]*nums[leftIndex])
      leftIndex -= 1
    }
    
    
    return result
  }
