func backspaceCompare(_ S: String, _ T: String) -> Bool {
  func helper(_ string: String) -> String {
    var result = ""
    for character in string {
      if character != "#" {
        result.append(character)
      } else {
        _ = result.popLast()
      }
    }
    return result
  }
  
  return helper(S) == helper(T)
  
}
