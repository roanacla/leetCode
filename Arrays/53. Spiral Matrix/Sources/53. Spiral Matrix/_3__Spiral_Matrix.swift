enum MatrixSide {
  case Top
  case Bottom
  case Left
  case Right
}

func spiralOrder(_ matrix: [[Int]]) -> [Int] {
  
  var hRange = 0..<matrix[0].count // Horizontal range | it shrinks on every after reaching to bottom of the matrix
  var result: [Int] = []
  
  func getValuesFrom(_ row: Int, _ side: MatrixSide) -> [Int] {
    switch side {
    case .Top:
      return Array(matrix[row][hRange]) //return the entire row inside range
    case .Bottom:
      return matrix[row][hRange].reversed() // return the entire row (reversed) inside the range
    case .Right:
      return [matrix[row][hRange.upperBound - 1]] // only the last element of the range
    case .Left:
      return [matrix[row][hRange.lowerBound]] // only the first element range
    }
  }
  
  var row = 0; var topEdge = 0; var bottomEdge = matrix.count - 1
  var increase = true
  while row <= bottomEdge {
    if bottomEdge < topEdge { break }
    if row == 0 { result += getValuesFrom(row, .Top); row += 1; continue } //
    if increase {
      if row == bottomEdge {
        result += getValuesFrom(row, .Bottom)
        increase = false; bottomEdge -= 1; topEdge += 1; row -= 1
        if hRange.lowerBound < hRange.upperBound - 1 {
          hRange = (hRange.lowerBound)..<(hRange.upperBound - 1)
        } else { break }
        continue
      }
      result += getValuesFrom(row, .Right)
      row += 1
    } else {
      if row == topEdge {
        result += getValuesFrom(row, .Top)
        increase = true; row += 1
        if hRange.lowerBound < hRange.upperBound - 1 {
          hRange = (hRange.lowerBound + 1)..<(hRange.upperBound)
        } else { break }
        continue
      }
      result += getValuesFrom(row, .Left)
      row -= 1
    }
  }
  
  
  return result
}
