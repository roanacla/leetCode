class Solution {
  var helperBoard: [[Bool]] = []
  
  func exist(_ board: [[Character]], _ word: String) -> Bool {
    let helperRow: [Bool] = [Bool](repeating: false, count: board[0].count)
    helperBoard = [[Bool]](repeating: helperRow, count: board.count)
    let word = Array(word)
    
    for row in 0..<board.count {
      for col in 0..<board[0].count {
        if helper(board, word, row, col) {
          return true
        }
      }
    }
    
    return false
  }
  
  func helper(_ board: [[Character]], _ word: [Character], _ row: Int, _ col: Int) -> Bool {
    
    let boardChar = board[row][col]
    let wordChar = word[0]
    
    if wordChar == boardChar {
      helperBoard[row][col] = true
      let w = Array(word[1...])
      if w.isEmpty { return true }
      if row - 1 >= 0 && helperBoard[row - 1][col] == false {
        if helper(board, w, row - 1, col) { return true }
      }
      if row + 1 < board.count && helperBoard[row + 1][col] == false {
        if helper(board, w, row + 1, col) { return true }
      }
      if col - 1 >= 0 && helperBoard[row][col - 1] == false {
        if helper(board, w, row, col - 1) { return true }
      }
      if col + 1 < board[row].count && helperBoard[row][col + 1] == false {
        if helper(board, w, row, col + 1) { return true }
      }
      helperBoard[row][col] = false
    }
    return false
  }
}
