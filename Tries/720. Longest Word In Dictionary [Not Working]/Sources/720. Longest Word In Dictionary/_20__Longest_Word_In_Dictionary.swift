public class TrieNode{
  
  public var value: Character
  public var parent: TrieNode?
  public var children: [Character: TrieNode] = [:]
  public var isFinal: Bool
  
  public init(value: Character, parent: TrieNode?, isFinal: Bool = false) {
    self.value = value
    self.parent = parent
    self.isFinal = isFinal
  }
  
  func addWord(_ word: String) {
    guard !word.isEmpty else { return }
    let firstCharacter = word[word.startIndex]
    if children[firstCharacter] == nil {
      if word.startIndex == word.index(before: word.endIndex) {
        children[firstCharacter] = TrieNode(value: firstCharacter, parent: self, isFinal: true)
      } else {
        children[firstCharacter] = TrieNode(value: firstCharacter, parent: self)
      }
    }
    children[firstCharacter]!.addWord(String(word[word.index(after:word.startIndex)..<word.endIndex]))
  }
}

func longestWord(_ words: [String]) -> String {
  let root = TrieNode(value: "#", parent: nil)
  for word in words {
    root.addWord(word)
  }
  bfs(trieNode: root)
  return String(longestWord[longestWord.index(after: longestWord.startIndex)..<longestWord.endIndex])
}

//Create longest word
//create temp word
//EveryTime I see final, I store the word in a variable if is lexicographicaly small

var longestWord = "Z"
var tempLongestWord = ""
var longestCounter = 0
var tempCounter = 0

func bfs(trieNode: TrieNode?) {
  guard let trieNode = trieNode else { return }
  tempLongestWord.append(trieNode.value)
  if trieNode.isFinal {
    tempCounter += 1
    if tempCounter >= longestCounter {
      longestCounter = tempCounter
//      if longestWord.count == tempLongestWord.count {
        longestWord = longestWord.lexicographicallyPrecedes(tempLongestWord) ? longestWord : tempLongestWord
//      } else {
//        longestWord = tempLongestWord
//      }
    }
  }
  let counterMem = tempCounter
  let memory = tempLongestWord
  for child in trieNode.children {
    tempLongestWord = memory
    tempCounter = counterMem
    bfs(trieNode: child.value)
  }
}
