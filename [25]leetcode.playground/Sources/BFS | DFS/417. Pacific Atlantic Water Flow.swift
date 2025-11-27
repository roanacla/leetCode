class Problem_417 {
    func pacificAtlantic(_ heights: [[Int]]) -> [[Int]] {
        let rows = heights.count
        guard rows > 0 else { return [] }
        let cols = heights[0].count

        // visited matrices for both oceans
        var pac = Array(repeating: Array(repeating: false, count: cols), count: rows)
        var atl = Array(repeating: Array(repeating: false, count: cols), count: rows)

        // directions: down, up, right, left
        let dirs = [(1, 0), (-1, 0), (0, 1), (0, -1)]

        func dfs(_ r: Int, _ c: Int, _ visited: inout [[Bool]]) {
            visited[r][c] = true
            for (dr, dc) in dirs {
                let nr = r + dr, nc = c + dc
                // Stay within bounds, not yet visited, and can flow "uphill" (non-decreasing)
                if nr >= 0, nr < rows, nc >= 0, nc < cols,
                !visited[nr][nc],
                heights[nr][nc] >= heights[r][c] {
                    dfs(nr, nc, &visited)
                }
            }
        }

        // Pacific: top row & left column
        for c in 0..<cols { dfs(0, c, &pac) }
        for r in 0..<rows { dfs(r, 0, &pac) }

        // Atlantic: bottom row & right column
        for c in 0..<cols { dfs(rows - 1, c, &atl) }
        for r in 0..<rows { dfs(r, cols - 1, &atl) }

        // Collect cells that can reach both
        var res: [[Int]] = []
        for r in 0..<rows {
            for c in 0..<cols {
                if pac[r][c] && atl[r][c] {
                    res.append([r, c])
                }
            }
        }
        return res
    }
}
