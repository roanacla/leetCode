class Problem_153 {
    func findMin(_ nums: [Int]) -> Int {
        var leftEdge = 0
        var rightEdge = nums.count - 1

        // When loop ends, leftEdge == rightEdge, and that index holds the minimum.
        while leftEdge < rightEdge {
            let mid = leftEdge + (rightEdge - leftEdge) / 2

            // If mid is greater than the right end, the pivot must be on the right.
            if nums[mid] > nums[rightEdge] {
                leftEdge = mid + 1
            }
            // If mid is less than or equal to the right end, the right side is sorted,
            // and the minimum is either mid or on the left. Set rightEdge = mid
            // to keep mid in the search space.
            else {
                rightEdge = mid
            }
        }

        // When leftEdge == rightEdge, we found the minimum.
        return nums[leftEdge]
    }
}
