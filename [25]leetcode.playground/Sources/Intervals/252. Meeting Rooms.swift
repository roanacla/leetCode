//
//  252. Meeting Rooms.swift
//  
//
//  Created by Roger Navarro Claros on 9/10/25.
//

public class Problem_252: Runner {
    func canAttendMeetings(_ intervals: [[Int]]) -> Bool {
        guard !intervals.isEmpty else { return true }
        guard intervals.count > 1 else { return true }
        
        var leftIndex = 0
        var rightIndex = leftIndex + 1
        var result = true
        var intervals = intervals
        intervals.sort(by: { $0[0] < $1[0] })
        
        while rightIndex < intervals.count {
            let leftInterval = intervals[leftIndex]
            let rightInterval = intervals[rightIndex]
            if (leftInterval[1] <= rightInterval[0]) {
                leftIndex = rightIndex
                rightIndex += 1
                continue
            } else {
                result = false
                break
            }
        }
        
        return result
    }
    
    public func runCode() {
        print("252. Meeting Rooms")
        let intervals = [[0,30], [5,10], [15,20]]
        print("\(canAttendMeetings(intervals) == false ? "Passed" : "Failed")")
    }
}
