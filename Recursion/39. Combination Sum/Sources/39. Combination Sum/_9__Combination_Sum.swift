struct _9__Combination_Sum {
    var text = "Hello, World!"
}
class Solution {
    var result: [[Int]] = []
    
    func combinationSum(_ candidates: [Int], _ target: Int) -> [[Int]] {
        for i in 0..<candidates.count {
            let row: [Int] = []
            helper(candidates, target, i, row)
        }
        return result
    }
    
    func helper(_ candidates: [Int], _ target: Int, _ index: Int, _ row: [Int] = [] ) {
        let num = candidates[index]
        
        if target - num == 0 {
            var row = row
            row.append(num)
            result.append(row)
            return
        }
        
        if target - num < 0 {
            return
        }
        
        if target - num > 0 {
            var row = row
            row.append(num)
            var index = index
            while index < candidates.count {
                let newTarget = target - num
                helper(candidates, newTarget, index, row)
                index += 1
            }
        }
    }
}
