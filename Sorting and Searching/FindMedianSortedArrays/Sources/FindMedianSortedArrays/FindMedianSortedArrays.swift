struct FindMedianSortedArrays {
    var text = "Hello, World!"
}


func findMedianSortedArrays(_ nums1: [Int], _ nums2: [Int]) -> Double {
  if nums1.isEmpty && nums2.isEmpty { return 0 }
  //Option 1
  // let merge = (nums1 + nums2).sorted()
  //Option 2 //
  let merge = joinInOrder(a: nums1, b: nums2)
  var result: Double = 0
  let half = merge.count / 2
  
  if merge.count % 2 == 0 {
    result = Double((merge[half - 1] + merge[half])) / 2
  } else {
    result = Double(merge[half])
  }
  
  return result
}

func joinInOrder (a: [Int], b: [Int]) -> [Int] {
  var result = [Int]()
  if a.isEmpty && b.isEmpty {
    return []
  } else if a.isEmpty {
    return b
  } else if b.isEmpty {
    return a
  } else {
    var aIndex = a.startIndex
    var bIndex = b.startIndex
    
    for _ in 0..<(a.count + b.count) {
      if aIndex < a.endIndex && bIndex < b.endIndex {
        let elementA = a[aIndex]
        let elementB = b[bIndex]
        let isABigger = elementA >= elementB
        result.append(isABigger ? elementB : elementA)
        aIndex = isABigger ? aIndex : a.index(after: aIndex)
        bIndex = isABigger ? b.index(after: bIndex) : bIndex
      } else {
        break
      }
    }
    if aIndex == a.endIndex {
      result += Array(b[bIndex..<b.endIndex])
    } else {
      result += Array(a[aIndex..<a.endIndex])
    }
  }
  return result
}
