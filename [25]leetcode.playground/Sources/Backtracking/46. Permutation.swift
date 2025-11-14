//
//  46. Permutation.swift
//  
//
//  Created by Roger Navarro Claros on 10/23/25.
//

func permute(_ nums: [Int]) -> [[Int]] {
    guard !nums.isEmpty else { return [] }
    guard nums.count > 1 else { return [[nums[0]]] }
    var nums = nums
    let last = nums.popLast()!
    var result: [[Int]] = []
    for permutation in permute(nums) {
        for i in 0...permutation.count {
            var per = permutation
            per.insert(last, at: i)
            result.append(per)
        }
    }
    
    return result
}
