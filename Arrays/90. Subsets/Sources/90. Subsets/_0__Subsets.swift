class Solution {
    func subsetsWithDup(_ nums: [Int]) -> [[Int]] {
        var output: Set<[Int]> = [[]]
        for num in nums {
            for item in output {
                var item = item
                item.append(num)
                item.sort()
                if !output.contains(item) {
                    output.insert(item)
                }
            }
        }
        return Array(output)
    }
}
