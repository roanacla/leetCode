// Given an array of intervals intervals where intervals[i] = [starti, endi], return the minimum number of intervals you need to remove to make the rest of the intervals non-overlapping.

// Note that intervals which only touch at a point are non-overlapping. For example, [1, 2] and [2, 3] are non-overlapping.

//

// Example 1:

// Input: intervals = [[1,2],[2,3],[3,4],[1,3]]
// Output: 1
// Explanation: [1,3] can be removed and the rest of the intervals are non-overlapping.
// Example 2:

// Input: intervals = [[1,2],[1,2],[1,2]]
// Output: 2
// Explanation: You need to remove two [1,2] to make the rest of the intervals non-overlapping.
// Example 3:

// Input: intervals = [[1,2],[2,3]]
// Output: 0
// Explanation: You don't need to remove any of the intervals since they're already non-overlapping.

class Problem_435 {
    func eraseOverlapIntervals(_ intervals: [[Int]]) -> Int {
        //sort the intervals
        guard intervals.count > 1 else { return 0 }
        var intervals = intervals.sorted(by: { $0[0] < $1[0] })
        var result = 0
        var last = intervals[0]

        for i in 1..<intervals.count {
            let cur = intervals[i]
            if last[1] <= cur[0] {
                last = cur
                continue
            } else { // overlaping
                if last[1] <= cur[1] || (last[1] > cur[0] && last[1] < cur[1]) { // 1 & 3 || 6
                    // nothing
                } else {
                    last = cur
                }
                result += 1
            }
        }

        return result
    }
}
