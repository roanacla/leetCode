
func minWindow(_ s: String, _ t: String) -> String {
  var subStringDict = convertToDictionary(string: t)
  var leftIndex = s.startIndex
  var rightIndex = s.startIndex
  var window = s
  
  while rightIndex != s.endIndex {
    let currentCharacter = s[rightIndex]
    if subStringDict.containsCharacter(currentCharacter) {
      subStringDict.reduceCount(character: currentCharacter)
      if subStringDict.isImbalanced() {
        leftIndex = s.index(after: leftIndex)
        while !subStringDict.containsCharacter(s[leftIndex]) {
          leftIndex = s.index(after: leftIndex)
        }
        subStringDict.increaseCount(character: currentCharacter)
      }
    }
    
    if subStringDict.isComplete() && window.count > s[leftIndex...rightIndex].count {
      window = String(s[leftIndex...rightIndex])
    }
    rightIndex = s.index(after: rightIndex)
  }
  
  
  return window
}

func convertToDictionary(string t: String) -> [Character: Int] {
  var subStringDict: [Character: Int] = [:]
  let tEnumerated = t.enumerated()
  for (_, value) in tEnumerated {
    if subStringDict[value] == nil {
      subStringDict[value] = 1
    } else {
      subStringDict[value]! += 1
    }
  }
  return subStringDict
}

private extension Dictionary where Key == Character, Value == Int  {
  func isImbalanced() -> Bool {
    for (_, value) in self {
      if value < 0 {
        return true
      }
    }
    return false
  }
  
  func isComplete() -> Bool {
    return self.reduce(0){ $0 + $1.1 } == 0 ? true : false
  }
  
  func containsCharacter(_ character: Character) -> Bool {
    return contains(where: {$0.key == character})
  }
  
  mutating func reduceCount(character: Character) {
    if let _ = self[character] {
      self[character]! -= 1
    }
  }
  
  mutating func increaseCount(character: Character) {
    if let _ = self[character] {
      self[character]! += 1
    }
  }
  
}


