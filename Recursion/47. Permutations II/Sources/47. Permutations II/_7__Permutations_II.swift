struct _7__Permutations_II {
  var text = "Hello, World!"
}

class Solution {
  func permuteUnique(_ nums: [Int]) -> [[Int]] {
    var results = [[Int]]()
    var nums = nums
    
    func helper(_ start: Int, _ level: Int) {
      if start == nums.count {
        results.append(nums)
        return
      }
      
      var used = Set<Int>()
      for idx in start..<nums.count where !used.contains(nums[idx]) {
        used.insert(nums[idx])
        nums.swapAt(idx, start)
        helper(start+1, level + 1)
        nums.swapAt(idx, start)
      }
    }
    
    helper(0, 1)
    return results
  }
}
