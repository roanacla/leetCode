//
//  42. Trapping Rain Water.swift
//  
//
//  Created by Roger Navarro Claros on 9/7/25.
//


// [5,5,1,7,1,1,5,2,7,6]
func trap(_ height: [Int]) -> Int {
    guard height.count > 2 else { return 0 }
    var leftIndex = 0
    var rightIndex = height.count - 1
    var leftHeight = height[leftIndex]
    var rightHeight = height[rightIndex]
    var water = 0
    var maxMinHeight = 0
    
    while leftIndex < rightIndex {
        // store the smallest wall = 1
        print(leftHeight, rightHeight, maxMinHeight)
        maxMinHeight = min(leftHeight, rightHeight) > maxMinHeight ? min(leftHeight, rightHeight) : maxMinHeight
        
        // water += (smallest wall - current level) > 0 ? currentLevel : 0
        let currentIndex = leftHeight <= rightHeight ? leftIndex : rightIndex
        water += (maxMinHeight - height[currentIndex]) > 0 ? maxMinHeight - height[currentIndex] : 0
        // move the smallest wall left or right
        if leftHeight <= rightHeight {
            leftHeight = height[currentIndex] > leftHeight ? height[currentIndex] : leftHeight
            leftIndex += 1
        } else {
            rightHeight = height[currentIndex] > rightHeight ? height[currentIndex] : rightHeight
            rightIndex -= 1
        }
    }
    
    return water
}
