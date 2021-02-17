  //Solution
  // 1. Convert input array to Dictionary
  // 2. if i == 0; return j
  // 3. if i != j && i < j; return dic[j] - dic[i -1]
  
class NumArray {
  
  var dic : [Int:Int] = [:]
  
  init(_ nums: [Int]) {
    for i in 0..<nums.count {
      if i == 0 {
        dic[i] = nums[i]
      } else {
        dic[i] = nums[i] + dic[i-1]!
      }
      
    }
  }
  
  func sumRange(_ i: Int, _ j: Int) -> Int {
    if i > j || j >= dic.count { return 0 }
    if i == 0 {
      return dic[j]!
    } else if i <= j {
      return dic[j]! - dic[i - 1]!
    } else {
      return 0
    }
  }
}
