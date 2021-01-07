struct FindMedianSortedArrays {
    var text = "Hello, World!"
}


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

