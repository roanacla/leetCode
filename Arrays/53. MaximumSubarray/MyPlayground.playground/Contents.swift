import UIKit

var str = "Hello, playground"

func findMedianSortedArrays(_ nums1: [Int], _ nums2: [Int]) -> Double {
  if nums1.isEmpty && nums2.isEmpty { return 0 }
  let merge = (nums1 + nums2).sorted()
  var result: Double = 0
  let half = merge.count / 2
  
  if merge.count % 2 == 0 {
    result = Double((merge[half - 1] + merge[half])) / 2
  } else {
    result = Double(merge[half])
  }
  
  return result
}

let nums1 = [1,2,3,4,5,6]//[Int]()//[2]//[Int]()//[0,0]//[1,2]//[1,3]
let nums2 = [7]//[Int]()//[Int]()//[1]//[0,0]//[3,4]//[2]

print(findMedianSortedArrays(nums1, nums2))
