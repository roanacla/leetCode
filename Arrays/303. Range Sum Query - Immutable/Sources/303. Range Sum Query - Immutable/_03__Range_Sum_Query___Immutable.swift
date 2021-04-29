  //Solution
  // 1. Convert input array to Dictionary
  // 2. if i == 0; return j
  // 3. if i != j && i < j; return dic[j] - dic[i -1]
  
class NumArray {  
  var data: [Int]

      init(_ nums: [Int]) {
         data = [Int](repeating: 0, count: nums.count + 1)
         for i in 0..<nums.count {
             data[i+1] = data[i] + nums[i]
         }
          print(data)
      }
      
      func sumRange(_ left: Int, _ right: Int) -> Int {
          return data[right + 1] - data[left]
      }
}
