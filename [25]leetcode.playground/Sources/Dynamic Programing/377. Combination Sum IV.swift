// Given an array of distinct integers nums and a target integer target, return the number of possible combinations that add up to target.
//
// The test cases are generated so that the answer can fit in a 32-bit integer.
//
//
//
// Example 1:
//
// Input: nums = [1,2,3], target = 4
// Output: 7
// Explanation:
// The possible combination ways are:
// (1, 1, 1, 1)
// (1, 1, 2)
// (1, 2, 1)
// (1, 3)
// (2, 1, 1)
// (2, 2)
// (3, 1)
// Note that different sequences are counted as different combinations.
// Example 2:
//
// Input: nums = [9], target = 3
// Output: 0


class Problem_377 {
    func combinationSum4(_ nums: [Int], _ target: Int) -> Int {
        var dp = Array(repeating: 0, count: target + 1)
        dp[0] = 1

        for i in 0...target {
            for num in nums {
                if i - num >= 0 {
                    dp[i] += dp[i - num] // use &+= to pass
                }
            }
        }

        return Int(dp[target])
    }
}
