
func combinationSum(_ candidates: [Int], _ target: Int) -> [[Int]] {
  let set: Set<Int> = [1,3,4,5]
  set.index
  return combinationSum(candidates, target, [])
  
}

func combinationSum(_ candidates: [Int], _ target: Int, _ sumCandidates: [Int] ) -> [[Int]] {
  // start from the last position of candidate
  // rest candidate with target
  // recursively send the new target
  // look for values that are equal or less than the current number
  var result = [[Int]]()
  if target == 0 {
    return [sumCandidates]
  } else if target < 0 {
    return []
  } else {
    var sumCandidates = sumCandidates
    var lastIndex = candidates.count - 1
    while candidates.startIndex < lastIndex {
      let candidate = candidates[lastIndex]
      let newTarget = target - candidate
      sumCandidates.append(newTarget)
      result += combinationSum(candidates, newTarget, sumCandidates)
      lastIndex -= 1
    }
  }
  return result.filter({$0 != []})
}
