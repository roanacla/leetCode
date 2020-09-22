//
//  viewModel.swift
//  Sum of even numbers after queries
//
//  Created by Roger Navarro on 9/19/20.
//

import Foundation
import RFoundation

class ViewModel {
  
  //    Input: A = [1,2,3,4], queries = [[1,0],[-3,1],[-4,0],[2,3]]
  //    Output: [8,6,2,4]
  func sumEvenAfterQueries(_ A: [Int], _ queries: [[Int]]) -> [Int] {
    var A = A
    var output: [Int] = []
    var sum = 0
    for val in A {
      sum += val.isEven() ? val : 0
    }
    
    for query in queries {
      let value = query[0]
      let index = query[1]
      let prev = A[index]
      A[index] += value
      sum -= prev.isEven() ? (prev) : 0
      sum += A[index].isEven() ? A[index] : 0
      output.append(sum)
    }
    
    
    return output
  }
  
}
