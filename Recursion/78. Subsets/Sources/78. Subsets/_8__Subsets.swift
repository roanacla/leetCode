class Solution {
    var result: [[Int]] = [[]]
    
    func subsets(_ nums: [Int]) -> [[Int]] {
        var nums: [Int] = nums.reversed()
        helper(&nums)
        return result
    }
    
    func helper(_ nums: inout [Int]) {
        guard !nums.isEmpty else { return }
        let current = nums.removeLast()
        for item in result {
            var newItem = item
            newItem.append(current)
            result.append(newItem)
        }
        helper(&nums)
    }
}
