/**
Input: n = 3
Output: ["((()))","(()())","(())()","()(())","()()()"]
*/
func generateParenthesis(_ n: Int) -> [String] {
  return generateParenthesis(input: "(", n: n, openNum: 1, closeNum: 0)
}

func generateParenthesis(input: String, n: Int, openNum: Int, closeNum: Int) -> [String] {
  //base case
  var result: [String] = []
  if openNum == n && openNum == closeNum {
    return [input]
  } else {
    if openNum < closeNum || openNum > n {
      return []
    } else {
      result += generateParenthesis(input: input + "(", n: n,  openNum: openNum + 1, closeNum: closeNum)
      result += generateParenthesis(input: input + ")", n: n,  openNum: openNum, closeNum: closeNum + 1)
    }
  }
  return result
}

