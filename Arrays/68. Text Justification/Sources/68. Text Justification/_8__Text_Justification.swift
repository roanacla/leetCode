struct _8__Text_Justification {
    var text = "Hello, World!"
}

var input = ["Science","is","what","we","understand","well","enough","to","explain","to","a","computer.","Art","is","everything","else","we","do"]


func fullJustify(_ words: [String], _ maxWidth: Int) -> [String] {
  var result: [String] = []
  var count = 0
  var wordsInLine: [String] = []
  for word in words {
    count += word.count
    if count > maxWidth {
      result.append(createLine(words: wordsInLine, maxWidth: maxWidth))
      wordsInLine.removeAll()
      count = 0
      count += word.count
    }
    count += 1
    wordsInLine.append(word)
  }
  result.append(createLine(words: wordsInLine, maxWidth: maxWidth))
  return result
}

func createLine(words: [String], maxWidth: Int) -> String {
  var count = words.reduce(into: 0) { result, word in
    result += word.count
  }
  let spacesToUse = maxWidth - count
  let spacesBwtWords = words.count - 1
  var result = ""
  for word in words {
    result += word
    
  }
  
  return result
}
