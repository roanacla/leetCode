class Solution {
    var rows = 0
    var columns = 0
    var board: [[Character]] = []
    func exist(_ board: [[Character]], _ word: String) -> Bool {
        self.rows = board.count
        self.columns = board[0].count
        self.board = board
        
        for row in 0..<rows {
            for column in 0..<columns {
                if backtrack(row, column, word) {
                    return true
                }
            }
        }
        
        return false
    }
    
    func backtrack(_ row: Int, _ column: Int, _ suffix: String) -> Bool {
        if suffix.count == 0 {
            return true
        }
        if row < 0 || row == rows || column < 0 || column == columns || board[row][column] != suffix[suffix.startIndex] {
            return false
        }
        board[row][column] = "#"
        for (rowOffset, columnOffset) in [(0,1), (-1, 0), (0, -1), (1,0)] {
            if backtrack(row + rowOffset, column + columnOffset, String(suffix[suffix.index(after:suffix.startIndex)..<suffix.endIndex])) {
                return true
            }
        }
        board[row][column] = suffix[suffix.startIndex]
        return false
    }
}
