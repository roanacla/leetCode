import UIKit

let trie = Trie<String>()
//trie.insert("hello")
trie.insert("o")
trie.insert("hell")
trie.insert("any")
trie.insert("one")
trie.insert("there")
trie.insert("hi")
trie.insert("the")
trie.insert("reach")
trie.insert("fire")
trie.insert("place")
trie.insert("hat")
trie.insert("chair")


//print("\nCollections starting with \"car\"")
//let prefixedWithCar = trie.collections(startingWith: "any")
//print(prefixedWithCar)

//print("\nCollections starting with \"care\"")
//let prefixedWithCare = trie.collections(startingWith: "care")
//print(prefixedWithCare)

//“helloanyonethere” => “HelloAnyOneThere”
//“hithere” => “HiThere”
//“thereach” => “TheReach”
//“fireplace” => “FirePlace”
//“hat” => “Hat”
//“chair” => “Chair”


//CapitalIndex
//explorerIndex

func camelize(string: String, trie: Trie<String>, range: Range<String.Index>? = nil) -> (String,Bool) {
  var string = string
  var startIndex = range == nil ? string.startIndex : range!.lowerBound
  var exploreIndex = range == nil ? string.index(after: startIndex) : range!.upperBound

  while exploreIndex != string.endIndex {
    let word = String(string[startIndex..<exploreIndex])
    if trie.contains(word) {
      let result = camelize(string: string, trie: trie, range: startIndex..<string.index(after: exploreIndex))
      if result.1 {
        return result
      } else {
        let char = string[startIndex].uppercased()
        string.replaceSubrange(startIndex...startIndex, with: char)
        if exploreIndex == string.index(before: string.endIndex) {
          return (string, true)
        }
        startIndex = exploreIndex
        exploreIndex = string.index(after: startIndex)
      }
      
    } else {
      exploreIndex = string.index(after: exploreIndex)
    }
  }
  
  return (string,false)
}

//print(camelize(string: "helloanyonethere", trie: trie))
print(camelize(string: "hithere", trie: trie))
