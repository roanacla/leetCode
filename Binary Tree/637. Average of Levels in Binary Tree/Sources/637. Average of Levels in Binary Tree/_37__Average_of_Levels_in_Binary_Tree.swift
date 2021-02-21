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

//currentLevel
//nextLevel

//add to currentLevel
//add children of current node to nextLevel
//if finish current level, copy items of nextLevel to currentLevel

func averageOfLevelsBFS(_ root: TreeNode?) -> [Double] {
  guard let root = root else { return [] }
  var currentLevel: [TreeNode] = []
  var nextLevel: [TreeNode] = []
  var result: [[Int]] = []
  
  currentLevel.append(root)
  var level = 0
  while !currentLevel.isEmpty {
    if result.count == level {
      result.append([])
    }
    for node in currentLevel {
      result[level].append(node.val)
      if node.left != nil {
        nextLevel.append(node.left!)
      }
      if node.right != nil {
        nextLevel.append(node.right!)
      }
    }
    currentLevel = nextLevel
    nextLevel = []
    level += 1
  }
  return result.map{ Double($0.reduce(0,+))/Double($0.count) }
}

