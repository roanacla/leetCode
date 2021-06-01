struct _5__Soft_Colors {
  var text = "Hello, World!"
}
class Solution {
  func sortColors(_ nums: inout [Int]) {
    insertionSort(&nums)
  }
  
  func insertionSort(_ nums: inout [Int]) {
    guard nums.count >= 2 else { return }
    
    for i in 1..<nums.count {
      for shift in (1...i).reversed() {
        let previous = shift - 1
        if nums[shift] < nums[previous] {
          nums.swapAt(shift,previous)
        } else {
          break
        }
      }
    }
  }
}
