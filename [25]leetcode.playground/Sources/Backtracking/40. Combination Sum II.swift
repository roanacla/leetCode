// Given a collection of candidate numbers (candidates) and a target number (target), find all unique combinations in candidates where the candidate numbers sum to target.
//
// Each number in candidates may only be used once in the combination.
//
// Note: The solution set must not contain duplicate combinations.
//
//
//
// Example 1:
//
// Input: candidates = [10,1,2,7,6,1,5], target = 8
// Output:
// [
// [1,1,6],
// [1,2,5],
// [1,7],
// [2,6]
// ]
// Example 2:
//
// Input: candidates = [2,5,2,1,2], target = 5
// Output:
// [
// [1,2,2],
// [5]
// ]



import Foundation

class Problem_40 {
    func combinationSum2(_ candidates: [Int], _ target: Int) -> [[Int]] {
        let candidates = candidates.sorted()
        var result: [[Int]] = []
        var validSum: [Int] = []
        var sum = 0
        
        func helper(_ start: Int) {
            if sum > target {
                return
            }
            if sum == target {
                result.append(validSum)
            } else {
                for index in start..<candidates.count {
                    if index > start, candidates[index] == candidates[index - 1] {
                        continue
                    }
                    let candidate = candidates[index]
                    sum += candidate
                    validSum.append(candidate)
                    helper(index + 1)
                    _ = validSum.popLast()
                    sum -= candidate
                }
            }
        }
        helper(0)
        return result
    }
}
