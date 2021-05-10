struct _61__One_Edit_Distance {
    var text = "Hello, World!"
}

class Solution {
    func isOneEditDistance(_ s: String, _ t: String) -> Bool {
        guard s != t else { return false }
        if s.count == t.count {
            return equalOneEditDistance(s,t)
        }
        guard s.count == t.count - 1 || s.count - 1 == t.count else { return false }
        let long = s.count > t.count ? s : t
        let short = s.count > t.count ? t : s
        return helper(Array(short), Array(long))
        
    }
    
    func helper(_ short: [Character], _ long: [Character]) -> Bool {
        guard !short.isEmpty else { return true }
        var canJump = true
        var i = 0
        var j = 0
        while i < long.count && j < short.count {
            if short[j] == long[i] {
                i += 1; j += 1
            } else if canJump {
                canJump = false
                i += 1
            } else {
                return false
            }
        }
        return true
    }
    
    func equalOneEditDistance( _ s: String, _ t: String) -> Bool {
        let s = Array(s)
        let t = Array(t)
        var canJump = true
        for i in 0..<s.count {
            if s[i] == t[i] {
                continue
            } else if canJump {
                canJump = false
                continue
            } else {
                return false
            }
        }
        return true
    }
}
