//
//  54. Spiral Matrix.swift
//  
//
//  Created by Roger Navarro Claros on 10/2/25.
//

public class Problem_54: Runner {
    enum Direction {
        case left
        case down
        case right
        case up
    }
    
    func spiralOrder(_ matrix: [[Int]]) -> [Int] {
        guard matrix.count > 0 else { return [] }
        // guard matrix[0].count > 1 else { return matrix[0] }
        
        var leftEdge = -1
        var rightEdge = matrix[0].count
        var topEdge = -1
        var bottomEdge = matrix.count
        
        var direction: Direction = matrix[0].count > 1 ? .right : .down
        var position: (row: Int, column: Int) = (0, 0)
        
        var result: [Int] = []
        
        while leftEdge < rightEdge - 1 && topEdge < bottomEdge - 1{
            result.append(matrix[position.row][position.column])
            switch direction {
            case .right:
                if position.column + 1 == rightEdge {      // look-ahead hits boundary
                    direction = .down
                    topEdge += 1
                    position.row += 1                          // consumed the top row
                } else {
                    position.column += 1
                }
                
            case .down:
                if position.row + 1 == bottomEdge {
                    direction = .left
                    rightEdge -= 1
                    position.column -= 1                        // consumed the right column
                } else {
                    position.row += 1
                }
                
            case .left:
                if position.column - 1 == leftEdge {
                    direction = .up
                    bottomEdge -= 1
                    position.row -= 1                         // consumed the bottom row
                } else {
                    position.column -= 1
                }
                
            case .up:
                if position.row - 1 == topEdge {
                    direction = .right
                    leftEdge += 1                        // consumed the left column
                    position.column += 1
                } else {
                    position.row -= 1
                }
            }
        }
        
        return result
    }
    
    public func runCode() {
        print("54. Spiral Matrix")
        
        let matrix1 = [[1,2,3],[4,5,6],[7,8,9]]
        let expected1 = [1,2,3,6,9,8,7,4,5]
        print(spiralOrder(matrix1) == expected1 ? "Passed" : "Failed")
        
        let matrix2 = [[1,2,3,4],[5,6,7,8],[9,10,11,12]]
        let expected2 = [1,2,3,4,8,12,11,10,9,5,6,7]
        print(spiralOrder(matrix2) == expected2 ? "Passed" : "Failed")
    }
}
