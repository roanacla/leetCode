

func merge(_ intervals: [[Int]]) -> [[Int]] {
  
  let intervals = intervals.sorted{ $0[0] < $1[0] }
  var output = [[Int]]()
  
  for interval in intervals {
    if let last = output.last, last[1] >= interval[0] {
      if last[1] < interval[1] {
        output[output.index(before: output.endIndex)][1] = interval[1]
      }
    } else {
      output.append(interval)
    }
  }
  
  return output
  
}
