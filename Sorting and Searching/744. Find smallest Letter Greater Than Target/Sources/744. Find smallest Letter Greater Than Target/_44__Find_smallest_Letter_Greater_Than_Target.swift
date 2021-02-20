func nextGreatestLetter(_ letters: [Character], _ target: Character) -> Character {
  return nextGreatestLetter(letters, target, 0..<letters.endIndex)
}

func nextGreatestLetter(_ letters: [Character], _ target: Character, _ range: Range<Int> ) -> Character {
  let middleIndex = letters.index(range.lowerBound, offsetBy: range.count / 2)
  
  //base case
  if letters[middleIndex] == target || range.lowerBound == range.upperBound {
    if middleIndex == letters.endIndex {
      return letters.first!
    } else {
      return letters[middleIndex + 1]
    }
  } else if letters[middleIndex] > target {
    return nextGreatestLetter(letters, target, range.lowerBound..<middleIndex)
  } else {
    return nextGreatestLetter(letters, target, letters.index(after:middleIndex)..<range.upperBound)
  }
}
