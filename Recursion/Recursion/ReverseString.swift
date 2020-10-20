//
//  ReverseString.swift
//  Recursion
//
//  Created by Roger Navarro on 10/20/20.
//

import Foundation
// abece

func reverseString(_ string: inout String) -> String {
  
  if string.isEmpty {
    return ""
  }
  let result = String(string.removeLast())
  return result + reverseString(&string)
}
