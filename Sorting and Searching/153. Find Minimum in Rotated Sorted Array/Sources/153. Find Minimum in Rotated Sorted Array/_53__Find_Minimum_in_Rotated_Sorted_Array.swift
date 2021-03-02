
// get the middle item
// ask if middle > firstElement
// // look to the right
// else
// // look to the left

class Solution {
    func findMin(_ nums: [Int]) -> Int {
      let firstElement = nums[0]
      let lastElement = nums[nums.count - 1]
      
      if firstElement > lastElement {
        
        return binarySearch(firstElement, nums, nums.startIndex..<nums.endIndex)
      }
      
      return firstElement
    }
  
  func binarySearch(_ firstElement: Int, _ nums: [Int], _ range: Range<Int>) -> Int {
    guard range.lowerBound < range.upperBound else { return -5001 }
    let middleIndex = nums.index(range.lowerBound, offsetBy: range.count / 2 )
    if middleIndex == nums.endIndex - 1 {
      return nums[middleIndex]
    }
    
    if nums[middleIndex] > nums[middleIndex + 1] {
      return nums[middleIndex + 1]
    }
    
    if nums[middleIndex] > firstElement {
      return binarySearch(nums[middleIndex], nums, nums.index(after:middleIndex)..<range.upperBound)
    } else {
      return binarySearch(nums[middleIndex], nums, range.lowerBound..<middleIndex)
    }
  }
}
