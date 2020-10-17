//
//  ViewModel.swift
//  LetterCombinations
//
//  Created by Roger Navarro on 10/16/20.
//

import Foundation

class ViewModel {
//  ["adg","adh","adi", "aeg","aeh","aei", "afg","afh","afi",
//   "bdg","bdh","bdi", "beg","beh","bei", "bfg","bfh","bfi",
//   "cdg","cdh","cdi", "ceg","ceh","cei", "cfg","cfh","cfi"]
  
  let dic: [String:[String]] = ["2":["a","b","c"],
                                "3":["d","e","f"],
                                "4":["g","h","i"],
                                "5":["j","k","l"],
                                "6":["m","n","o"],
                                "7":["p","q","r","s"],
                                "8":["t","v","u"],
                                "9":["w","x","y","z"]]
  
  
  func multiply(letter: String, array: [String]) -> [String] {
    var result :[String] = []
    for item in array {
      result.append("\(letter)\(item)")
    }
    return result
  }
  
  
  func letterCombinations(_ digits: inout String) -> [String] {
    if digits.isEmpty { return [] }
    if digits.count == 1 { return dic[digits]! }
    let firstDigit = String(digits.removeLast())
    let letters = dic[firstDigit]!
    var result: [String] = []
    for letter in letters {
      result += multiply(letter: letter, array: letterCombinations(&digits))
    }
    return result
  }
  
  func letterCombinations(_ digits: String) -> [String] {
    var digits = String(digits.reversed())
    return self.letterCombinations(&digits)
  }
}
