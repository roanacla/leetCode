//
//  2022. Convert 1D Array into 2D array.swift
//  
//
//  Created by Roger Navarro Claros on 9/11/25.
//

public class Problem_2022: Runner {
    func construct2DArray(_ original: [Int], _ rows: Int, _ columns: Int) -> [[Int]] {
        guard (columns * rows) == original.count else { return [] }
        var result: [[Int]] = Array(repeating: Array(repeating: 0, count: columns), count: rows)
        var index = 0
        for row in 0..<rows {
            for column in 0..<columns {
                result[row][column] = original[index]
                index += 1
            }
        }
        return result
    }
    
    public func runCode() {
        print("2022. Convert 1D Array Into 2D Array")
        let original = [1,2,3,4]
        let rows = 2
        let columns = 2
        print("\(construct2DArray(original, rows, columns) == [[1,2],[3,4]] ? "Passed" : "Failed")")
    }
}
