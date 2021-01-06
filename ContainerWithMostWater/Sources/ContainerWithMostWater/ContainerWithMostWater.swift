struct ContainerWithMostWater {
    var text = "Hello, World!"
}

func maxArea(_ height: [Int]) -> Int {
  if height.isEmpty && height.count < 2 { return 0 }
  
  var maxArea = 0
  var leftIndex = height.startIndex
  var rightIndex = height.endIndex - 1
  
  while leftIndex < rightIndex {
    let leftValue = height[leftIndex]
    let rightValue = height[rightIndex]
    let minLenght = min(leftValue,rightValue)
    let area = minLenght * height.distance(from: leftIndex, to: rightIndex)
    if maxArea < area {
      maxArea = area
    }
    if leftValue > rightValue {
      while rightValue >= height[rightIndex] && leftIndex < rightIndex {
        rightIndex = height.index(before: rightIndex)
      }
    } else if leftValue < rightValue {
      while leftValue >= height[leftIndex] && leftIndex < rightIndex{
        leftIndex = height.index(after: leftIndex)
      }
    } else {
      while leftValue >= height[leftIndex] && rightValue >= height[rightIndex] && leftIndex < rightIndex {
        leftIndex = height.index(after: leftIndex)
        rightIndex = height.index(before: rightIndex)
      }
    }
    
  }
  
  return maxArea
}
