//
//  RemoveElement.swift
//  RemoveElement
//
//  Created by Roger Navarro on 12/26/20.
//

import Foundation

func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
  
  guard !nums.isEmpty else { return 0 }
  
  nums.removeAll(where: { current in
    return current == val ? true : false
  })
  
  return nums.count
  
}
