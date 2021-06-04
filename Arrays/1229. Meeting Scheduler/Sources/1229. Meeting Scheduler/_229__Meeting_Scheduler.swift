struct _229__Meeting_Scheduler {
  var text = "Hello, World!"
}

class Solution {
  func minAvailableDuration(_ slots1: [[Int]], _ slots2: [[Int]], _ duration: Int) -> [Int] {
    guard !slots1.isEmpty else { return [] }
    guard !slots2.isEmpty else { return [] }
    let slots1 = slots1.sorted{$0[0]<$1[0]}
    let slots2 = slots2.sorted{$0[0]<$1[0]}
    
    var j = 0
    var i = 0
    while i < slots1.count && j < slots2.count {
      let slot1 = slots1[i]
      let slot2 = slots2[j]
      
      let leftEdge = max(slot1[0],slot2[0])
      let rightEdge = min(slot1[1],slot2[1])
      if rightEdge - leftEdge >= duration {
        let end = leftEdge + duration
        return [leftEdge, end ]
      } else if slot1[1] > slot2[1] {
        j += 1
      } else if slot1[1] < slot2[1] {
        i += 1
      }
    }
    
    return []
  }
}
