
func combine(_ n: Int, _ k: Int) -> [[Int]] {
    guard n >= k else { return [] }
    guard k > 1 else { return (1...n).map{[$0]} } // base case
    
    var result: [[Int]] = []
    for combination in combine(n, k - 1) {
        let last = combination.last!
        for i in k...n {
            var combination = combination
            if last < i, combination.count ==  k - 1 {
                combination.append(i)
                result.append(combination)
            }
        }
    }
    
    return result
}
