//Given an m x n integer matrix matrix, if an element is 0, set its entire row and column to 0's.
//
//You must do it in place.
//
//Input: matrix = [[1,1,1],[1,0,1],[1,1,1]]
//Output: [[1,0,1],[0,0,0],[1,0,1]]
//Example 2:
//
//
//Input: matrix = [[0,1,2,0],[3,4,5,2],[1,3,1,5]]
//Output: [[0,0,0,0],[0,4,5,0],[0,3,1,0]]

class Problem_73 {
    func setZeroes(_ matrix: inout [[Int]]) {
        var columns: Set<Int> = []
        var rows: Set<Int> = []
        
        for row in 0..<matrix.count {
            for col in 0..<matrix[row].count {
                if matrix[row][col] == 0 && (!columns.contains(col) || !rows.contains(row)) {
                    columns.insert(col)
                    rows.insert(row)
                    backtrack(row, col, &matrix)
                } else {
                    if rows.contains(row) || columns.contains(col) {
                        matrix[row][col] = 0
                    }
                }
            }
        }
    }
    
    func backtrack(_ row: Int, _ col: Int, _ matrix: inout [[Int]]) {
        for i in (0..<row).reversed() {
            matrix[i][col] = 0
        }
        for i in (0..<col).reversed() {
            matrix[row][i] = 0
        }
    }
}
