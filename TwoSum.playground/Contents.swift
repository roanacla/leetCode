import Foundation
/*
Given an array of integers nums and and integer target, return the indices of the two numbers such that they add up to target.

You may assume that each input would have exactly one solution, and you may not use the same element twice.

You can return the answer in any order.#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
*/

//func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
//  var hashMap : [Int:Int] = [:]
//  var index = 0
//  for num in nums {
//    let secondNum = target - nums[index]
//    if let secondIndex = hashMap[secondNum] {
//      return [index,secondIndex].sorted()
//    }
//    hashMap[num] = index
//    index += 1
//  }
//  return [0,0]
//}
//
//let nums = [2,7,11,15]
//let target = 9
//
//twoSum(nums, target)

func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
  var auxDic: [Int:Int] = [:]
  var index = 0
  
  while index < nums.count {
    let firstNumber = nums[index]
    let secondNumber = target - firstNumber
    if let secondIndex = auxDic[secondNumber], index != secondIndex  {
      return [index, secondIndex].sorted()
    } else {
      auxDic[firstNumber] = index
    }
    index += 1
  }
  return [0,0]
}

let nums = [3,2,4]//[2,7,11,15]
let target = 6//9

twoSum(nums, target)
