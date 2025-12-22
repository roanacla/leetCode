//
//  78. Subsets.swift
//  
//
//  Created by Roger Navarro Claros on 12/22/25.
//

class Problem_78 {
    func subsets(_ nums: [Int]) -> [[Int]] {
        var results: [[Int]] = []
        var currentPath: [Int] = []
        
        func backtrack(startIndex: Int) {
            results.append(currentPath)
            for i in startIndex..<nums.count {
                currentPath.append(nums[i])
                print(currentPath)
                backtrack(startIndex: i + 1)
                print("removed: \(currentPath.removeLast())")
            }
        }
        backtrack(startIndex: 0)
        
        return results
    }
    
    func subsetsTwo(_ nums: [Int]) -> [[Int]] {
         var result: [[Int]] = [[]]
         for num in nums {
             for i in 0..<result.count {
                 var newSet = result[i]
                 newSet.append(num)
                 result.append(newSet)
             }
         }

         return result
    }
}
