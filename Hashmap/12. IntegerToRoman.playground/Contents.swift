import Foundation

class Solution {
  let decimalNumbers = [10,100,1000,10000]
  let romanDictionary = [1:"I", 5:"V", 10:"X", 50:"L", 100:"C", 500:"D", 1000:"M"]
  let romanTuples = [(1,5),(10,50),(100,500),(1000,1000)]
  
  func intToRoman(_ num: Int) -> String {
    if num > 3999 || num < 0 { return "0"}
    var decimalValue = num
    var decomposition: [Int] = []
    var resultArray: [String] = []
    
    for position in decimalNumbers {
      let decimal = decimalValue % position
      decimalValue = decimalValue - decimal
      // if decimal != 0 {
        decomposition.append(decimal)
      // }
    }
    print(decomposition)
    
    for index in 0..<decomposition.count {
      let num = Int(Float(decomposition[index])/Float(decimalNumbers[index])*10)
      let romanTuple = romanTuples[index]
      let a = romanDictionary[romanTuple.0]!
      let b = romanDictionary[romanTuple.1]!
      let c = romanDictionary[romanTuple.1*2] ?? ""

      if num == 5 {
        resultArray.append(b)
      } else if (num > 5) {
        if num == 9 {
          resultArray.append(a + c)
        } else if num == 8 {
          resultArray.append(b + a + a + a)
        } else if num == 7 {
          resultArray.append(b + a + a)
        } else if num == 6 {
          resultArray.append(b + a)
        }
      } else { //if num < 5
        if num == 4 {
          resultArray.append(a + b)
        } else if num == 3 {
          resultArray.append(a + a + a)
        } else if num == 2 {
          resultArray.append(a + a)
        } else if num == 1 {
          resultArray.append(a)
        }
      }
    }
    
    print(resultArray)
    resultArray.reverse()
    var result = ""
    for item in resultArray {
      result += item
    }
    return result
  }
}

Solution().intToRoman(1994)
