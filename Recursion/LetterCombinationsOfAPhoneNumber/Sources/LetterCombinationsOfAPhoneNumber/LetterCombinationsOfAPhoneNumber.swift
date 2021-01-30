let lettersByDigit: [Character: [String]] = ["2": ["a","b","c"],
                                                "3": ["d","e","f"],
                                                "4": ["g","h","i"],
                                                "5": ["j","l","k"],
                                                "6": ["m","n","o"],
                                                "7": ["p","q","r","s"],
                                                "8": ["t","u","v"],
                                                "9": ["w","x","y","z"]]

func letterCombinations(_ digits: String) -> [String] {
  guard !digits.isEmpty else { return [] }
  return temp(digits, currentIndex: digits.startIndex)
}

func temp(_ digits: String, currentIndex: String.Index) -> [String] {
  var result: [String] = []
  if currentIndex == digits.index(before: digits.endIndex) {
    return lettersByDigit[digits[currentIndex]]!
  } else {
    let characters = lettersByDigit[digits[currentIndex]]!
    for character in characters {
      for tail in temp( digits, currentIndex: digits.index(after: currentIndex)) {
        result.append(character + tail)
      }
    }
  }
  
  return result
}
