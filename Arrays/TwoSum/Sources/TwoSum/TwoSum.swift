struct TwoSum {
    var text = "Hello, World!"
}

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
