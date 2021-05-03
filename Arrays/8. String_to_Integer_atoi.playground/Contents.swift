//Implement atoi which converts a string to an integer.
//
//The function first discards as many whitespace characters as necessary until the first non-whitespace character is found. Then, starting from this character, takes an optional initial plus or minus sign followed by as many numerical digits as possible, and interprets them as a numerical value.
//
//The string can contain additional characters after those that form the integral number, which are ignored and have no effect on the behavior of this function.
//
//If the first sequence of non-whitespace characters in str is not a valid integral number, or if no such sequence exists because either str is empty or it contains only whitespace characters, no conversion is performed.
//
//If no valid conversion could be performed, a zero value is returned.
//
//Note:
//
//Only the space character ' ' is considered as whitespace character.
//Assume we are dealing with an environment which could only store integers within the 32-bit signed integer range: [−231,  231 − 1]. If the numerical value is out of the range of representable values, INT_MAX (231 − 1) or INT_MIN (−231) is returned.

import Foundation

class Solution {
  func myAtoi(_ str: String) -> Int {
    var allowWhiteSpaces = true
    var allowSymbols = true
    
    var stringResult = "" {
      didSet {
        allowWhiteSpaces = false
        allowSymbols = false
      }
    }
    for char in str {
      if char.isWhitespace {
        if allowWhiteSpaces {
          continue
        } else {
          break
        }
      } else if char == "-" || char == "+" {
        if allowSymbols {
          if char == "-" {
            stringResult += String(char)
          }
          allowSymbols = false
          allowWhiteSpaces = false
        } else {
          break
        }
      } else if !char.isNumber {
        break
      } else if char == "0" && (stringResult.isEmpty || (stringResult.count == 1 && stringResult.first == "-")) {
        allowSymbols = false
          allowWhiteSpaces = false
        continue
      } else if char.isNumber {
        stringResult += String(char)
      }
    }
    print(stringResult)
    
    if stringResult.count == 1, (stringResult.first == "-" || stringResult.first == "+") {
      return 0
    } else if stringResult.count > 11 {
      return stringResult.first == "-" ? Int(Int32.min) : Int(Int32.max)
    } else if let result = Int(stringResult), result > Int32.max || result < Int32.min {
      return result > Int32.max ? Int(Int32.max) : Int(Int32.min)
    } else {
      return Int(stringResult) ?? 0
    }
  }
}

let input = "42"
Solution().myAtoi(input)

Int64.max
Int.max

Int.max > Int32.max
