// Solution 1 : Recursion with Memoization
func climbStairs(_ n: Int) -> Int {
  var memo: [Int] = [Int].init(repeating: 0, count: n + 1)
  return climbStairs(n,0, &memo)
}

func climbStairs(_ totalSteps: Int, _ steps: Int, _ memo: inout [Int]) -> Int {
  // var memo = memo
  if steps > totalSteps {
    return 0
  }
  if steps == totalSteps {
    return 1
  }
  if memo[steps] > 0 {
    return memo[steps]
  }
  memo[steps] = climbStairs(totalSteps,steps + 1, &memo) + climbStairs(totalSteps, steps + 2, &memo)
  
  
  return memo[steps]
}

// Solution 2: Dynamic Programming & Fibonacci Number
//Better solution
func climbStairsTwo(_ n: Int) -> Int {
  if n == 1 { return 1 }
  if n == 2 { return 2 }
  var stairs = [Int].init(repeating: 0, count: n + 1)
  stairs[1] = 1
  stairs[2] = 2
  for i in 3...n {
    stairs[i] = stairs[i - 1] + stairs[i - 2]
  }
  
  return stairs.last ?? 0
}
