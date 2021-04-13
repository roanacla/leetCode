typealias Ouput = (word: String, isCamelized: Bool)

func camelize(string: String, trie: Trie<String>, range: Range<String.Index>? = nil) -> Ouput {
  var string = string
  var wordStartIndex = range == nil ? string.startIndex : range!.lowerBound
  var exploreIndex = range == nil ? string.startIndex : range!.upperBound

  while exploreIndex != string.endIndex {
    let word = String(string[wordStartIndex...exploreIndex])
    if trie.contains(word) {
      // Call method recursivily to make sure word derivatives are taken into account:
      let result = camelize(string: string, trie: trie, range: wordStartIndex..<string.index(after: exploreIndex))
      // If all words are found in recursion exit algorithm:
      if result.isCamelized {
        return result
      // Otherwise, backtrack to the latest word match:
      } else {
        let char = string[wordStartIndex].uppercased()
        string.replaceSubrange(wordStartIndex...wordStartIndex, with: char)
        // If exploreIndex reached the end and the last word is found in the trie, return true.
        if exploreIndex == string.index(before: string.endIndex) {
          return (string, true)
        }
        wordStartIndex = string.index(after: exploreIndex)
        exploreIndex = wordStartIndex
      }
      
    } else {
      exploreIndex = string.index(after: exploreIndex)
    }
  }
  
  //Return false if it wasn't possible to camelize the input string:
  return (string,false)
}
