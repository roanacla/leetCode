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

func reverseString(_ s: inout [Character]) {
  if s.count < 2 { return }
  let lastSwapIndex: Int = (s.count - 1) / 2 
  print("🟢\(lastSwapIndex)")
  func helper(_ s: inout [Character], index: Int, lastSwapIndex: Int) {
    if (lastSwapIndex + 1) == index { return }
    let temp = s[index]
    s[index] = s[s.endIndex - index - 1 ]
    s[s.endIndex - index - 1 ] = temp
    helper(&s, index: index + 1, lastSwapIndex: lastSwapIndex)
  }
  helper(&s, index: 0, lastSwapIndex: lastSwapIndex)
}
