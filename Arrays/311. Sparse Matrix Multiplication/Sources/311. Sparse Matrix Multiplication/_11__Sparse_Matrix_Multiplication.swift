struct _11__Sparse_Matrix_Multiplication {
    var text = "Hello, World!"
}


class Solution {
    func multiply(_ mat1: [[Int]], _ mat2: [[Int]]) -> [[Int]] {
      let resultRow: [Int] = [Int](repeating: 0, count: mat2[0].count)
        var result: [[Int]] = [[Int]](repeating: resultRow, count: mat1.count)
        
        for row in 0..<mat1.count {
            for col in 0..<mat2[0].count {
                for i in 0..<mat1[0].count {
                    let mult = mat1[row][i] * mat2[i][col]
                    result[row][col] += mult
                }
            }
        }
        
        return result
    }
}
