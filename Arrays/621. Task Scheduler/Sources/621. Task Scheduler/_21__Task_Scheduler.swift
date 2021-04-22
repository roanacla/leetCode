
func duplicateZeros(_ arr: inout [Int]) {
  var skip = false
  var removerCount = 0
  for i in 0..<arr.count {
    if arr[i] == 0 && skip == false {
      arr.insert(0, at: i+1)
      removerCount += 1
      skip = true
    } else if arr[i] == 0 && skip == true {
      skip = false
    }
  }
  
  while 0 < removerCount {
    arr.removeLast()
    removerCount -= 1
  }
}
