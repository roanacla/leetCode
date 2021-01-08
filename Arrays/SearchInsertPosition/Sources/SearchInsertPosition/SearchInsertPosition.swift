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
