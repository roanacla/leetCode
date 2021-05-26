struct _0__Valid_Parentheses {
    var text = "Hello, World!"
}

class Solution {
    func isValid(_ s: String) -> Bool {
        typealias Result = (parenthesis: Int,
                          curlyBrackets: Int,
                          squareBrackets: Int)
        
        var result: Result = (0,0,0)
        var stack: [Character] = []

        for char in s {
            
            switch char {
                case "(":
                    result.parenthesis += 1
                    stack.append(char)
                case ")":
                    result.parenthesis -= 1
                    guard let symbol = stack.popLast(), symbol == "(" else { return false }
                case "{":
                    result.curlyBrackets += 1
                    stack.append(char)
                case "}":
                    result.curlyBrackets -= 1
                    guard let symbol = stack.popLast(), symbol == "{" else { return false }
                case "[":
                    result.squareBrackets += 1
                    stack.append(char)
                case "]":
                    result.squareBrackets -= 1
                    guard let symbol = stack.popLast(), symbol == "[" else { return false }
                default:
                    return false
            }
        }
        
        return result == (0,0,0) ? true : false
    }
}
