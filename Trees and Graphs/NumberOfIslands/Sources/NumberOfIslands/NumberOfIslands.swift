
func dfs(grid: inout [[Character]], row: Int, column: Int ) {
  let numberOfRows = grid.count
  let numberOfColumns = grid[0].count
  
  if row < 0 || column < 0 || row >= numberOfRows || column >= numberOfColumns || grid[row][column] == "0" {
    return
  }
  
  grid[row][column] = "0"
  dfs(grid: &grid, row: row - 1, column: column) //top
  dfs(grid: &grid, row: row + 1, column: column) //bottom
  dfs(grid: &grid, row: row, column: column - 1) //left
  dfs(grid: &grid, row: row, column: column + 1) //right
  
}

func numIslands(_ grid: [[Character]]) -> Int {
  var grid = grid
  var islandsCount = 0
  for row in 0..<grid.count {
    for column in 0..<grid[row].count {
      let node = grid[row][column]
      if node == "1"  {
        dfs(grid: &grid, row: row, column: column)
        islandsCount += 1
      }
    }
  }
  return islandsCount
}
