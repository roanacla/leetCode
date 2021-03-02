class Solution {
    var counter = 0
    func kthSmallest(_ root: TreeNode?, _ k: Int) -> Int {
      guard let root = root else { return 0 }
      
      let leftResult = kthSmallest(root.left, k)
      if leftResult > 0 {
        return leftResult
      }
      counter += 1
      if counter == k {
        return root.val
      }
      let rightResult = kthSmallest(root.right, k)
      if rightResult > 0 {
        return rightResult
      }
      
      return 0
    }
}
