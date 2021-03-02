class Solution {

    func findDuplicate(_ nums: [Int]) -> Int {
      var dic: [Int:Int] = [:]
      var result = 0
      for num in nums {
        dic[num, default: 0] += 1
        if dic[num] == 2 {
          result = num
          break
        }
      }
      
      return result
    }
}
