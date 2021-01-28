//func moveZeroes(_ nums: inout [Int]) {
//  guard nums.count > 1 else { return }
//  moveZeroesToTheLeft(&nums)
//}
//
//func moveZeroesToTheLeft(_ nums: inout [Int], currentIndex: Array<Int>.Index? = nil) {
//  let currentIndex = currentIndex ?? nums.startIndex + 1
//  if currentIndex == nums.endIndex {
//    return
//  } else {
//    let currentValue = nums[currentIndex]
//    if currentValue != 0 {
//      var leftIndex = nums.index(before: currentIndex)
//      let leftValue = nums[leftIndex]
//      while leftIndex > -1 {
//        if leftIndex == 0 && leftValue == 0 {
//          nums.swapAt(leftIndex, currentIndex)
//          break
//        } else if leftValue == 0 && nums[leftIndex - 1] != 0 {
//          nums.swapAt(leftIndex,currentIndex)
//          break
//        }
//        leftIndex -= 1
//      }
//    }
//  }
//  moveZeroesToTheLeft(&nums, currentIndex: currentIndex + 1)
//}

func moveZeroes(_ nums: inout [Int]) {
  guard nums.count > 1 else { return }
  var leftIndex = nums.startIndex
  var rightIndex = leftIndex + 1
  
  while rightIndex < nums.endIndex  {
    let leftValue = nums[leftIndex]
    let rightValue = nums[rightIndex]
    
    if leftValue == 0 && rightValue != 0 {
      nums.swapAt(leftIndex, rightIndex)
    } else if leftValue == 0 && rightValue == 0 {
      rightIndex += 1
      continue
    }
    leftIndex += 1
    rightIndex += 1
  }
}
