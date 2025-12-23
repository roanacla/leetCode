//
//  39. Combination Sum.swift
//  
//
//  Created by Roger Navarro Claros on 12/22/25.
//

class Problem_39 {
    func combinationSum(_ candidates: [Int], _ target: Int) -> [[Int]] {
        var combination: [Int] = []
        var result: [[Int]] = []

        func dfs(_ i: Int, newTarget: Int) {
            for j in i..<candidates.count {
                let num = candidates[j]
                guard num <= newTarget else { continue }
                combination.append(num)
                if newTarget - num == 0 {
                    result.append(combination)
                } else if newTarget - num > 0 {
                    dfs(j, newTarget: newTarget - num)
                }
                combination.removeLast()
            }
        }

        dfs(0, newTarget: target)

        return result
    }
}
