class Solution {
    func nextPermutation(_ nums: inout [Int]) {
        var i = nums.count - 2
        while i >= 0 && nums[i + 1] <= nums[i] {
            i -= 1
        }
        print(i)
        if i >= 0 {
            var j = nums.count - 1
            while j >= 0 && nums[j] <= nums[i] {
                j -= 1
            }
            print(j)
            nums.swapAt(i,j)
        }
        print(nums)
        reverse(nums: &nums,start: i+1)
    }
    
    func reverse(nums: inout[Int], start: Int) {
        var i = start
        var j = nums.count - 1
        while i < j {
            nums.swapAt(i,j)
            i += 1
            j -= 1
        }
    }
}
