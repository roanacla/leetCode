var rowsWithZero = Set<Int>()
var columnsWithZero = Set<Int>()

func setZeroes(_ matrix: inout [[Int]]) {
  
  // First Visit
  for rowNum in 0..<matrix.count {
    for colNum in 0..<matrix[rowNum].count {
      if matrix[rowNum][colNum] == 0 {
        rowsWithZero.insert(rowNum)
        columnsWithZero.insert(colNum)
      }
    }
    if rowsWithZero.contains(rowNum) {
      matrix[rowNum] = [Int](repeating: 0, count: matrix[rowNum].count)
    }
  }
  
  //Second Visit
  for rowNum in 0..<matrix.count {
    if rowsWithZero.contains(rowNum) { continue } //skip rows with 0's
    for colIndex in columnsWithZero {
      matrix[rowNum][colIndex] = 0
    }
  }
  
}
