class Problem_153 {
    func findMin(_ nums: [Int]) -> Int {
        var mid = nums.count / 2
        var leftEdge = 0
        var rightEdge = nums.count - 1

        while leftEdge <= rightEdge {
            if nums[leftEdge] <= nums[rightEdge] {
                return nums[leftEdge]
            } else if nums[mid] < nums[rightEdge] {
                rightEdge = mid
            } else if nums[mid] > nums[rightEdge] {
                leftEdge = mid + 1
            }
            mid = leftEdge + ((rightEdge - leftEdge) / 2)
        }

        return nums[mid]
    }
}
