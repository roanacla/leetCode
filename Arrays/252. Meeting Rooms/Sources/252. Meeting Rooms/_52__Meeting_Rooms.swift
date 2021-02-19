func canAttendMeetings(_ intervals: [[Int]]) -> Bool {
  guard !intervals.isEmpty else { return true }
  guard intervals.count > 1 else { return true }
  var intervals = intervals
  intervals.sort{ $0[0] <= $1[0] }
  
  for i in 1..<intervals.count {
    if intervals[i-1][1] > intervals[i][0] {
      return false
    }
  }
  
  return true
}
