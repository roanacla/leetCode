//
//  442. Find all duplicates in an Array.swift
//  
//
//  Created by Roger Navarro Claros on 10/1/25.
//

public class Problem_442: Runner {
    func setZeroes(_ matrix: inout [[Int]]) {
        var rows: Set<Int> = []
        var columns: Set<Int> = []
        
        for rowIndex in 0..<matrix.count {
            for colIndex in 0..<matrix[rowIndex].count {
                if matrix[rowIndex][colIndex] == 0 {
                    rows.insert(rowIndex)
                    columns.insert(colIndex)
                }
            }
        }
        
        for rowIndex in 0..<matrix.count {
            for colIndex in 0..<matrix[rowIndex].count {
                if rows.contains(rowIndex) || columns.contains(colIndex) {
                    matrix[rowIndex][colIndex] = 0
                }
            }
        }
    }
    
    public func runCode() {
        print("442. Find All Duplicates in an Array")
        
        var matrix1 = [[1,1,1],[1,0,1],[1,1,1]]
        setZeroes(&matrix1)
        let expected1 = [[1,0,1],[0,0,0],[1,0,1]]
        print(matrix1 == expected1 ? "Passed" : "Failed")
        
        var matrix2 = [[0,1,2,0],[3,4,5,2],[1,3,1,5]]
        setZeroes(&matrix2)
        let expected2 = [[0,0,0,0],[0,4,5,0],[0,3,1,0]]
        print(matrix2 == expected2 ? "Passed" : "Failed")
    }
}
