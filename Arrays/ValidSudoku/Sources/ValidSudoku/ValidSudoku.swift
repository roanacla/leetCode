struct ValidSudoku {
    var text = "Hello, World!"
}

func isValidSudoku(_ board: [[Character]]) -> Bool {
  //Check if rows are valid
  for row in board {
    guard isValidRow(array: row) else { return false }
  }
  //Check if columns are valid
  for columnIndex in 0..<board.count {
    var column: [Character] = []
    for rowIndex in 0..<board.count {
      column.append(board[rowIndex][columnIndex])
    }
    guard isValidColumn(array: column) else { return false }
  }
  //Check if squares are valid
  let middleIndexes = [(1,1),(1,4),(1,7),
                       (4,1),(4,4),(4,7),
                       (7,1),(7,4),(7,7)]
  for middleIndex in middleIndexes {
    let square: [Character] = getSquareFor(index: middleIndex, in: board)
    guard isValidSquare(array: square) else { return false}
  }
  
  return true
}

func isValidRow(array: [Character]) -> Bool {
  let array = array.filter{ $0 != "." }
  return array.count == Set(array).count ? true : false
}

func isValidColumn(array: [Character]) -> Bool {
  return isValidRow(array: array)
}

func isValidSquare(array: [Character]) -> Bool {
  return isValidRow(array: array)
}

func getSquareFor(index: (row: Int, column: Int), in array2D: [[Character]]) -> [Character] {
  return [array2D[index.row-1][index.column-1],
          array2D[index.row-1][index.column],
          array2D[index.row-1][index.column+1],
          array2D[index.row][index.column-1],
          array2D[index.row][index.column],
          array2D[index.row][index.column+1],
          array2D[index.row+1][index.column-1],
          array2D[index.row+1][index.column],
          array2D[index.row+1][index.column+1]]
}



