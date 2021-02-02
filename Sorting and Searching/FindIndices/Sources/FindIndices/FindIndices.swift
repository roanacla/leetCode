import Foundation

struct FindIndices {
    var text = "Hello, World!"
}

func findIndeces<Element>(for target: Element, in array: [Element]) -> Range<Array<Element>.Index>? where Element: Comparable {
  guard let leftIndex = array.findLeftEdgeIndex(for: target),
        let rightIndex = array.findRightEdgeIndex(for: target) else { return nil }
  
  return leftIndex..<array.index(after: rightIndex)
}

extension RandomAccessCollection where Element: Comparable {
  
  func findLeftEdgeIndex(for target: Element, in range: Range<Index>? = nil) -> Index? {
    let range = range ?? startIndex..<endIndex
    guard range.lowerBound < range.upperBound else { return nil }
    
    let size = distance(from: range.lowerBound, to: range.upperBound)
    let middle = index(range.lowerBound, offsetBy: size/2)

    if self[middle] == target {
      let previousIndex = self.index(before: middle)
      if self.indices.contains(previousIndex) {
        if self[previousIndex] == target {
          return findLeftEdgeIndex(for: target, in: range.lowerBound..<middle)
        }
      }
      return middle
    } else if self[middle] > target {
      return findLeftEdgeIndex(for: target, in: range.lowerBound..<middle)
    } else {
      return findLeftEdgeIndex(for: target, in: self.index(after:middle)..<range.upperBound)
    }
  }
  
  func findRightEdgeIndex(for target: Element, in range: Range<Index>? = nil) -> Index? {
    let range = range ?? startIndex..<endIndex
    guard range.lowerBound < range.upperBound else { return nil }
    
    let size = distance(from: range.lowerBound, to: range.upperBound)
    let middle = index(range.lowerBound, offsetBy: size/2)

    if self[middle] == target {
      let nextIndex = self.index(after: middle)
      if self.indices.contains(nextIndex) {
        if self[nextIndex] == target {
          return findRightEdgeIndex(for: target, in: self.index(after:middle)..<range.upperBound)
        }
      }
      return middle
    } else if self[middle] > target {
      return findRightEdgeIndex(for: target, in: range.lowerBound..<middle)
    } else {
      return findRightEdgeIndex(for: target, in: self.index(after:middle)..<range.upperBound)
    }
  }
  
}
