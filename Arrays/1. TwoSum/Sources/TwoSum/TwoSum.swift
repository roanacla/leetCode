struct TwoSum {
  var text = "Hello, World!"
}

func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
  var dic: [Int:Int] = [:]
  for index in 0..<nums.count {
    let secondNumber = target - nums[index]
    if dic[secondNumber] != nil {
      let secondIndex = dic[secondNumber]!
      return [secondIndex, index]
    } else {
      dic[nums[index]] = index
    }
  }
  
  return [0,0] // no solution
}
