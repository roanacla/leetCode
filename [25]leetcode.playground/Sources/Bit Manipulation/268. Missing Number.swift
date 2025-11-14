public class Problem_268: Runner {
    
    public init() {}
    
    public func missingNumber(_ nums: [Int]) -> Int {
        guard !nums.isEmpty else { return 0 }
        guard nums.count > 1 else { return nums[0] + 1}
        let sortedNums = nums.sorted()
        var lowestNum = sortedNums.first!
        var currentNum = 0
        for i in 1..<sortedNums.count {
            currentNum = sortedNums[i]
            if currentNum - 1 == lowestNum {
                lowestNum = currentNum
                continue
            } else {
                return lowestNum + 1
            }
        }
        return currentNum + 1
    }
    
    public func missingNumberTwo(_ nums: [Int]) -> Int {
        // n (n + 1) / 2
        let totalSum = nums.count * (nums.count + 1) / 2
        let total = 0
        let localSum = nums.reduce(total, { $0 + $1 })
        return totalSum - localSum
    }
    
    public func runCode() {
        print("268. Missing Number")
        print("Algo with sort: O(n log n)")
        print(missingNumber([3,0,1]) == 2 ? "Passed" : "Failed")
        print(missingNumber([0,1]) == 2 ? "Passed" : "Failed")
        print(missingNumber([9,6,4,2,3,5,7,0,1]) == 8 ? "Passed" : "Failed")
        print(missingNumber([-3,-2,-1,1]) == 0 ? "Passed" : "Failed")
        
        print("Algo with Sum: O(n)")
        print(missingNumberTwo([3,0,1]) == 2 ? "Passed" : "Failed")
        print(missingNumberTwo([0,1]) == 2 ? "Passed" : "Failed")
        print(missingNumberTwo([9,6,4,2,3,5,7,0,1]) == 8 ? "Passed" : "Failed")
        print(missingNumberTwo([-3,-2,-1,1]) == 0 ? "Passed" : "Failed")
    }
}


