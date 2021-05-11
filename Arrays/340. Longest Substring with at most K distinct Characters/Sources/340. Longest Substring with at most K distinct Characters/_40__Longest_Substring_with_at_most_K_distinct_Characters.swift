struct _40__Longest_Substring_with_at_most_K_distinct_Characters {
  var text = "Hello, World!"
}

func lengthOfLongestSubstringKDistinct(_ s: String, _ k: Int) -> Int {
  if s.count < k { return s.count }
  if k == 0 { return 0 }
  
  var result: Int = 0
  let s = Array(s)
  var p1 = 0
  var p2 = 0
  var dict: [Character: Int] = [:]
  
  while p2 < s.count {
    let char = s[p2]
    dict[char, default: 0] += 1
    if dict.count <= k {
      p2 += 1
      let distance = s.distance(from: p1, to: p2)
      result = max(result,distance)
    } else {
      dict[char, default: 0] -= 1
      while dict.count > k {
        let p1Char = s[p1]
        dict[p1Char]! -= 1
        if dict[p1Char] == 0 {
          dict[p1Char] = nil
        }
        p1 += 1
      }
    }
    
  }
  return result
  
}
