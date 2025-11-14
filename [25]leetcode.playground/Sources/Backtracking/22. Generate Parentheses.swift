
func generateParenthesis(_ n: Int) -> [String] {
        var result: [String] = []
        var stack = ""

        func helper(_ open: Int, _ close: Int) {
            if open == close, open == n {
                result.append(stack)
                return
            }

            if open < n {
                stack += "("
                helper(open + 1, close)
                stack.removeLast()
            }

            if close < open {
                stack += ")"
                helper(open, close + 1)
                stack.removeLast()
            }
        }

        helper(0, 0)
        return result
    }
