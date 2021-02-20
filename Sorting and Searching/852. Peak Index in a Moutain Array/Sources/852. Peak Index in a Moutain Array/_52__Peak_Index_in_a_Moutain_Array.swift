
func peakIndexInMountainArray(_ arr: [Int]) -> Int {
  return peakIndexInMountainArray(arr, 0..<arr.endIndex)
}

func peakIndexInMountainArray(_ arr: [Int], _ range: Range<Int>) -> Int {
  let middleIndex = arr.index(range.lowerBound, offsetBy: range.count/2)
  
  if arr[middleIndex] > arr[middleIndex - 1] && arr[middleIndex] > arr[middleIndex + 1] {
    return middleIndex
  } else if arr[middleIndex - 1] > arr[middleIndex] {
    return peakIndexInMountainArray(arr, range.lowerBound..<middleIndex)
  } else {
    return peakIndexInMountainArray(arr, arr.index(after:middleIndex)..<range.upperBound)
  }
}
