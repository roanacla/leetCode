
// Input: arr = [17,18,5,4,6,1]

// Output: [18,6,6,6,1,-1]

//1 Store Maximum // 1
//2 If current index is equal to last index = -1
//2.1 Temp = compare maxValue vs current value == 6
//3 Change current value with maximum [6 with 1]
//4 Change the maximum with temp [1 with 6]
//5 Backtrack index

func replaceElements(_ arr: [Int]) -> [Int] {
  var arr = arr
  var rightIndex = arr.index(before: arr.endIndex)
  var currentValue = arr[rightIndex]
  var maxValue = currentValue
  arr[rightIndex] = -1
  
  while arr.startIndex < rightIndex {
    rightIndex = arr.index(before: rightIndex)
    let current = arr[rightIndex]
    maxValue = max(maxValue, currentValue)
    arr[rightIndex] = maxValue
    currentValue = current
  }
  
  return arr
}

