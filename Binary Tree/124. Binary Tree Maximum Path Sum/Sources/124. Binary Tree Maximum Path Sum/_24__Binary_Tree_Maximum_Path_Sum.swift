  public class TreeNode {
      public var val: Int
      public var left: TreeNode?
      public var right: TreeNode?
      public init() { self.val = 0; self.left = nil; self.right = nil; }
      public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
      public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
          self.val = val
          self.left = left
          self.right = right
      }
  }
 

//in-order traversal
//store max-sum
//reset current-sum

class Solution {
    private var vMax = Int.min
    private func helper(_ root: TreeNode?) -> Int {
        guard let root = root else { return 0 }
        
        let l = max(helper(root.left), 0)
        let r = max(helper(root.right), 0)
        
        vMax = max(vMax, root.val + l + r)
        return root.val + max(l, r)
    }
    
    func maxPathSum(_ root: TreeNode?) -> Int {
        _ = helper(root)
        return vMax
    }
}
