struct SearchInsertPosition {
    var text = "Hello, World!"
}

func searchInsert(_ nums: [Int], _ target: Int) -> Int {
  let numsDict = Array(nums.enumerated())
  let result = searchPos(numsDict, target)
  
  return result
}

func searchPos(_ dic: [(Int,Int)], _ target: Int ) -> Int {
  if dic.count == 1 {
    if target > dic.first!.1 {
      return dic.first!.0 + 1
    } else {
      return dic.first!.0
    }
  }
  let halfIndex = dic.count / 2
  
  let leftArray = dic[0..<halfIndex]
  let rightArray = dic[halfIndex..<dic.count]
  var index = 0
  
  if let first = leftArray.first, first.1 >= target {
    index = dic.first!.0
  } else if let last = leftArray.last, last.1 >= target {
    index = searchPos(Array(leftArray), target)
  } else if let last = rightArray.last, last.1 >= target {
    index = searchPos(Array(rightArray), target)
  } else {
    index = dic.last!.0 + 1
  }
  
  return index
}


//Version 2

func searchInsert2(_ nums: [Int], _ target: Int) -> Int {
  
  for index in 0..<nums.count {
    if nums[index] >= target {
      return index
    }
  }
  
  return nums.count
}

//Version 3 : Improving Version 1
func searchInsert3(_ nums: [Int], _ target: Int) -> Int {
  return nums.searchInsertAux(target: target)
}

extension RandomAccessCollection where Element: Comparable {
  func searchInsertAux(target: Element, in range: Range<Index>? = nil) -> Index {
    let range = range ?? startIndex..<endIndex
    guard range.lowerBound < range.upperBound else {
      return range.lowerBound
    }
    
    let size = distance(from: range.lowerBound, to: range.upperBound)
    let middle = index(range.lowerBound, offsetBy: size/2)
    
    if self[middle] == target {
      return middle
    } else if self[middle] > target {
      return searchInsertAux(target: target, in: range.lowerBound..<middle)
    } else {
      return searchInsertAux(target: target, in: index(after: middle)..<range.upperBound)
    }
  }
  
}
