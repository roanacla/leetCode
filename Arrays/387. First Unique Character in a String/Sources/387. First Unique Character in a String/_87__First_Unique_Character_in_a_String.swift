struct _87__First_Unique_Character_in_a_String {
    var text = "Hello, World!"
}

class Solution {
    func firstUniqChar(_ s: String) -> Int {
        var firstIndex = -1
        var character: Character = " "
        var s = Array(s)
        var i = 0
        var repeated: Set<Character> = []
        
        while i < s.count {
            let char = s[i] //l
            if character == " " && !repeated.contains(char) {
                character = char // l
                firstIndex = i // 0
                repeated.insert(char)
            } else if character == char {
                character = " "
                i = firstIndex + 1
                firstIndex = -1
                continue
            }
            i += 1
        }
        
        return firstIndex
    }
}
