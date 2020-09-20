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
    var sum = 0
    var output: [Int] = []
    for query in queries {
      let value = query[0]
      let index = query[1]
      A[index] = A[index] + value
      sum = 0
      for val in A {
        sum += val.isEven() ? val : 0
      }
      output.append(sum)
    }
    
    
    return output
  }
  
}
