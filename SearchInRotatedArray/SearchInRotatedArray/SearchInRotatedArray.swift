//
//  SearchInRotatedArray.swift
//  SearchInRotatedArray
//
//  Created by Roger Navarro on 12/27/20.
//

import Foundation

func search(_ nums: [Int], _ target: Int) -> Int {
  return nums.firstIndex(where: { $0 == target }) ?? -1
}
