//
//  ViewModel.swift
//  LetterCombinations
//
//  Created by Roger Navarro on 10/16/20.
//

import Foundation

class ViewModel {
//  Input: digits = "23"
//  Output: ["ad","ae","af","bd","be","bf","cd","ce","cf"]
  let dic: [String:[String]] = ["2":["a","b","c"],
                                "3":["d","e","f"],
                                "4":["g","h","i"],
                                "5":["j","k","l"],
                                "6":["m","n","o"],
                                "7":["p","q","r","s"],
                                "8":["t","v","u"],
                                "9":["w","x","y","z"]]
  
  
  func multiply(string: String, array: [String]) -> [String] {
    var result: [String] = []
    for item in array {
      result.append("\(string)\(item)")
    }
    return result
  }
  
  func letterCombinations(_ digits: inout String) -> [String] {
    
    if digits.isEmpty { return [] }
    if digits.count == 1 {
      return dic[digits]!
    }
    return []
  }
  
  func letterCombinations(_ digits: String) -> [String] {
    var reversedDigits = String(digits.reversed())
    return letterCombinations(&reversedDigits)
  }
}
