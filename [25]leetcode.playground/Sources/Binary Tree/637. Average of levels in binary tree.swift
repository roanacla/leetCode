//
//  637. Average of levels in binary tree.swift
//  Given the root of a binary tree, return the average value of the nodes on each level in the form of an array. Answers within 10-5 of the actual answer will be accepted.

//Input: root = [3,9,20,null,null,15,7]
//Output: [3.00000,14.50000,11.00000]


// Constraints:
//
// The number of nodes in the tree is in the range [1, 104].
// -231 <= Node.val <= 231 - 1

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

public class Problem_637: Runner {
    //BFS
    
    func averageOfLevelsTwo(_ root: TreeNode?) -> [Double] {
        guard let root else { return []}
        var currentLevel: [TreeNode] = [root]
        
        var level = 0
        var result: [[Int]] = []
        
        while !currentLevel.isEmpty {
            var nextLevel: [TreeNode] = []
            result.append([])
            for node in currentLevel {
                result[level].append(node.val)
                if let left = node.left {
                    nextLevel.append(left)
                }
                if let right = node.right {
                    nextLevel.append(right)
                }
            }
            level += 1
            currentLevel = nextLevel
        }
        
        return result.map {Double($0.reduce(0,+)) / Double($0.count)}
    }
    
    func averageOfLevels(_ root: TreeNode?) -> [Double] {
        guard let root else { return [] }
        var currentLevel: [TreeNode] = []
        var nextLevel: [TreeNode] = []
        
        currentLevel.append(root)
        var result: [[Int]] = []
        var level = 0
        
        while !currentLevel.isEmpty {
            result.append([])
            for node in currentLevel {
                result[level].append(node.val)
                if let left = node.left {
                    nextLevel.append(left)
                }
                if let right = node.right {
                    nextLevel.append(right)
                }
            }
            currentLevel = nextLevel
            nextLevel = []
            level += 1
        }
        
        return result.map { Double($0.reduce(0, +)) / Double($0.count) }
    }
    
    //DFS - Post Order
    
    func averageOfLevelsDFS(_ root: TreeNode?) -> [Double] {
        var result: [[Int]] = []
        postOrderTraversal(node: root, result: &result, level: 0)
        return result.map { Double($0.reduce(0, +)) / Double($0.count) }
    }
    
    func postOrderTraversal(node: TreeNode?, result: inout [[Int]], level: Int) {
        guard let node else { return }
        //left
        if result.count == level {
            result.append([])
        }
        postOrderTraversal(node: node.left, result: &result, level: level + 1)
        //right
        postOrderTraversal(node: node.right, result: &result, level: level + 1)
        //top
        // check if result has an array at a position
        
        result[level].append(node.val)
    }
    
    public func runCode() {
        let treeNode3 = TreeNode(3)
        let treeNode9 = TreeNode(9)
        let treeNode20 = TreeNode(20)
        let treeNode15 = TreeNode(15)
        let treeNode7 = TreeNode(7)
        
        treeNode3.left = treeNode9
        treeNode3.right = treeNode20
        treeNode20.left = treeNode15
        treeNode20.right = treeNode7
        
        print("BFS solution")
        print(averageOfLevels(treeNode3) == [3.0, 14.5, 11.0] ? "Passed" : "Fail")
        
        print("DFS solution - postOrder")
        print(averageOfLevelsDFS(treeNode3) == [3.0, 14.5, 11.0] ? "Passed" : "Fail")
        
    }
}
