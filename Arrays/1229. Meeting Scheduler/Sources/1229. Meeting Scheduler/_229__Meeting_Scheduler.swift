struct _229__Meeting_Scheduler {
    var text = "Hello, World!"
}

class Solution {
    func minAvailableDuration(_ slots1: [[Int]], _ slots2: [[Int]], _ duration: Int) -> [Int] {
        guard !slots1.isEmpty else { return [] }
        guard !slots2.isEmpty else { return [] }
        let slots1 = slots1.sorted{$0[0]<$1[0]}
        let slots2 = slots2.sorted{$0[0]<$1[0]}
        
        let shortSlot = slots1.count < slots2.count ? slots1 : slots2
        let longSlot = slots1.count >= slots2.count ? slots1 : slots2
        
        return helper(shortSlot, longSlot, duration)
    }
    
    func helper(_ shortSlots: [[Int]], _ longSlots: [[Int]], _ duration: Int) -> [Int] {
        var j = 0
        for i in 0..<longSlots.count {
            let longSlot = longSlots[i]
            if longSlot[1] - longSlot[0] >= duration {
                while j < shortSlots.count {
                    let shortSlot = shortSlots[j]
                    if shortSlot[1] < longSlot[0] {
                        j += 1
                        continue
                    } else if shortSlot[0] > longSlot[1] {
                        break
                    }
                    let leftEdge = max(shortSlot[0],longSlot[0])
                    let rightEdge = min(shortSlot[1],longSlot[1])
                    if rightEdge - leftEdge >= duration {
                        let end = leftEdge + duration
                        return [leftEdge, end ]
                    } else if longSlot[1] >= shortSlot[1] {
                        j += 1
                    } else if longSlot[1] < shortSlot[1] {
                        break
                    }
                }
            }
        }
        return []
    }
}
