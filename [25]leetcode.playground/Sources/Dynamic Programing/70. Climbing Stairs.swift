//You are climbing a staircase. It takes n steps to reach the top.

//Each time you can either climb 1 or 2 steps. In how many distinct ways can you climb to the top?

public class Problem_70: Runner {
    
    public init() {}
    
    func climbStairs(_ n: Int) -> Int {
        guard n > 1 else { return 1 }
        var stairs = Array(repeating: 0, count: n)
        stairs[0] = 1
        stairs[1] = 2
        for i in 2..<n {
            stairs[i] = stairs[i - 1] + stairs[i - 2]
        }
        return stairs[n - 1]
    }
    
    func climbStairsTwo(_ n: Int) -> Int {
        var stepBefore = 2
        var stepBeforeLast = 1
        if n == 1 { return stepBeforeLast }
        if n == 2 { return stepBefore }
        var result = 0
        for _ in 2..<n {
            result = stepBefore + stepBeforeLast
            stepBeforeLast = stepBefore
            stepBefore = result
        }
        return result
    }
    
    func climbStairsThree(_ n: Int) -> Int {
        guard n > 1 else { return 1 }
        var secondLast = 1
        var last = 2
        
        for step in 2..<n {
            let cur = last + secondLast
            secondLast = last
            last = cur
        }
        
        return last
    }
    
    public func runCode() {
        print("70. Climb Stairs")
        print(climbStairs(2) == 2 ? "Passed" : "Failed")
        print(climbStairs(3) == 3 ? "Passed" : "Failed")
        print(climbStairs(4) == 5 ? "Passed" : "Failed")
        
        print("version 2")
        print(climbStairsTwo(2) == 2 ? "Passed" : "Failed")
        print(climbStairsTwo(3) == 3 ? "Passed" : "Failed")
        print(climbStairsTwo(4) == 5 ? "Passed" : "Failed")
    }
}
