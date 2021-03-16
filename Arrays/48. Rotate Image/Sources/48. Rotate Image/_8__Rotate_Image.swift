func rotate(_ matrix: inout [[Int]]) {
  transpose(&matrix)
}

func transpose(_ matrix: inout [[Int]]) {
  var row = 0
  var column = 0
  
  while row < matrix.count && column < matrix.count {
    while column < matrix.count {
      let num1 = matrix[row][column]
      matrix[row][column] = matrix[column][row]
      matrix[column][row] = num1
      column += 1
    }
    row += 1
    column = row
  }
  row = 0
  column = 0
  while row < matrix.count {
    while column < matrix.count / 2 {
      let num1 = matrix[row][column]
      matrix[row][column] = matrix[row][matrix.count - 1 - column]
      matrix[row][matrix.count - 1 - column] = num1
      column += 1
    }
    row += 1
    column = 0
  }
}
