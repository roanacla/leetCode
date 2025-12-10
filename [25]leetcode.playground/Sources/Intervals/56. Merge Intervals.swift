
// Given an array of intervals where intervals[i] = [starti, endi], merge all overlapping intervals, and return an array of the non-overlapping intervals that cover all the intervals in the input.
//
//
//
// Example 1:
//
// Input: intervals = [[1,3],[2,6],[8,10],[15,18]]
// Output: [[1,6],[8,10],[15,18]]
// Explanation: Since intervals [1,3] and [2,6] overlap, merge them into [1,6].
// Example 2:
//
// Input: intervals = [[1,4],[4,5]]
// Output: [[1,5]]
// Explanation: Intervals [1,4] and [4,5] are considered overlapping.
// Example 3:
//
// Input: intervals = [[4,7],[1,4]]
// Output: [[1,7]]
// Explanation: Intervals [1,4] and [4,7] are considered overlapping.

class Problem_56 {
    func merge(_ intervals: [[Int]]) -> [[Int]] {
        guard intervals.count > 1 else { return intervals}
        
        var intervals = intervals.sorted(by: {$0[0] < $1[0]})
        var result: [[Int]] = [intervals[0]]
        
        for i in 1..<intervals.count {
            if intervals[i][0] <= result[result.count - 1][1] {
                result[result.count - 1][1] = max(intervals[i][1], result[result.count - 1][1])
            } else {
                result.append(intervals[i])
            }
        }

        return result
    }
}
