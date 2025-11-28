class Problem_238 {
    func productExceptSelf(_ nums: [Int]) -> [Int] {
        var result: [Int] = Array(repeating: 1, count: nums.count)
        for i in 0..<nums.count {
            if i > 0 {
                result[i] = nums[i - 1] * result[i - 1]
            }
        }

        var sufix = 1
        for i in (0..<nums.count).reversed() {
            if i < nums.count - 1 {
                sufix = nums[i + 1] * sufix
            }
            result[i] *= sufix
        }
        
        return result
    }
}
