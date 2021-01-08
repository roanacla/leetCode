import UIKit

var str = "Hello, playground"


func searchInsert(_ nums: [Int], _ target: Int) -> Int {
  if nums.count == 1 { return 0 }
  let numsDict = Array(nums.enumerated())
  let result = searchPos(numsDict, target)
  
  return result
}

func searchPos(_ dic: [(Int,Int)], _ target: Int ) -> Int {
  let halfIndex = dic.count
  
  let leftArray = dic[0..<halfIndex]
  let rightArray = dic[halfIndex...]
  var index = 0
  
  if leftArray.last!.1 >= target {
    if leftArray.count == 1 {
      if leftArray.first!.1 == target {
        index = leftArray.last!.0
      } else {
        index = leftArray.last!.0 - 1
      }
    } else {
      index = searchPos(Array(leftArray), target)
    }
  } else if rightArray.first!.1 >= target {
    if rightArray.count == 1 {
      if rightArray.first!.1 == target {
        index = rightArray.first!.0
      } else {
        index = rightArray.first!.0 - 1
      }
    } else {
      index = searchPos(Array(rightArray), target)
    }
  }
  
  return index
}


let test = [1,3,5,6]
let ans = 2

print(searchInsert(test, ans))
