import Foundation
func isPalindrome(_ s: String) -> Bool {
  let so = s
  let noCaps = so.lowercased().filter{ $0.isNumber || $0.isLetter }
  let reversed = noCaps.reversed()
  
  return noCaps == String(reversed)
}
