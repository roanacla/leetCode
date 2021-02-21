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


func averageOfLevels(_ root: TreeNode?) -> [Double] {
  guard let root = root else { return [] }
  var levels: [[Int]] = []
  averageOfLevels(root, &levels, 0)
  return levels.map{ (Double($0.reduce(0,+)) / Double($0.count)) }
}

private func averageOfLevels(_ root: TreeNode, _ levels: inout [[Int]], _ level: Int) {
  if levels.count == level {
    levels.append([])
  }
  levels[level].append(root.val)
  if root.left != nil {
    averageOfLevels(root.left!, &levels, level + 1)
  }
  if root.right != nil {
    averageOfLevels(root.right!, &levels, level + 1)
  }
}

