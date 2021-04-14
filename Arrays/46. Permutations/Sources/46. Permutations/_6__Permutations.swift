class Solution {
    func permute(_ nums: [Int]) -> [[Int]] {
        var result: [[Int]] = []
        var nums = nums
        
        //base case
        if nums.count == 1 {
            return [nums]
        }
        
        for _ in 0..<nums.count {
            let num = nums.removeLast()
            var perms = self.permute(nums)
            
            for i in 0..<perms.count {
                perms[i].append(num)
            }
            result += perms
            nums.insert(num, at: 0)
        }
        return result
    }
}
