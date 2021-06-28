struct _0__Valid_Parentheses {
  var text = "Hello, World!"
}

class Solution {
  func isValid(_ s: String) -> Bool {
    var openCharacters: [Character] = []
    
    for character in s {
      if character == "(" || character == "[" || character == "{" {
        openCharacters.append(character)
      } else {
        guard !openCharacters.isEmpty else { return false }
        let lastOpened = openCharacters.popLast()
        if lastOpened == "(" && character != ")" ||
            lastOpened == "[" && character != "]" ||
            lastOpened == "{" && character != "}" {
          return false
        }
      }
    }
    
    return openCharacters.isEmpty
  }
}
