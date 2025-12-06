//111. Minimum Depth of Binary Tree.swift
//Given a binary tree, find its minimum depth.
//
//The minimum depth is the number of nodes along the shortest path from the root node down to the nearest leaf node.
//
//Note: A leaf is a node with no children.
public class Problem_111: Runner {
    //DFS - Post order traversal
    func minDepth(_ root: TreeNode?) -> Int {
        guard let root else { return 0 }
        var level = 1
        let leftDepth = minDepth(root.left)
        let rightDepth = minDepth(root.right)
        if leftDepth == 0 {
            level += rightDepth
        } else if rightDepth == 0 {
            level += leftDepth
        } else {
            level += min(leftDepth, rightDepth)
        }
        
        return level
    }
    
    func minDepthBFS(_ root: TreeNode?) -> Int {
        guard var currentNode = root else { return 0 }
        var level = 0
        
        var queue: [TreeNode] = [currentNode]
        var dequeueIndex = 0
        
        while dequeueIndex < queue.count {
            currentNode = queue[dequeueIndex]
            dequeueIndex += 1
            
            let children = [currentNode.left, currentNode.right].compactMap{$0}
            if children.isEmpty {
                level += 1
                break
            }
            for child in children {
                queue.append(child)
            }
            let levelEnd = queue.count
            if dequeueIndex == queue.count - 1 {
                level += 1
            }
        }
        
        return level
    }
    
    func minDepthTwo(_ root: TreeNode?) -> Int {
            guard let root else { return 0 }
            var currentLevel: [TreeNode] = [root]
            var result = 0
            out: while !currentLevel.isEmpty {
                result += 1
                var nextLevel: [TreeNode] = []
                print(currentLevel.map{$0.val})
                for node in currentLevel {
                    if node.left == nil && node.right == nil {
                        break out
                    }
                    if let left = node.left {
                        nextLevel.append(left)
                    }
                    if let right = node.right {
                        nextLevel.append(right)
                    }
                }
                currentLevel = nextLevel
            }

            return result
        }
    
    
    public func runCode() {
        let root = TreeNode(3)
        let node9 = TreeNode(9)
        let node20 = TreeNode(20)
        let node15 = TreeNode(15)
        let node7 = TreeNode(7)
        
        root.left = node9
        root.right = node20
        node20.left = node15
        node20.right = node7
        print("111. Minimum Depth of Binary Tree")
//        print(minDepth(root) == 2 ? "Passed" : "Failed")
//        print(minDepthBFS(root) == 2 ? "Passed" : "Failed")
        
        let node2 = TreeNode(2)
        let node3 = TreeNode(3)
        let node4 = TreeNode(4)
        let node5 = TreeNode(5)
        let node6 = TreeNode(6)
        
        node2.right = node3
        node3.right = node4
        node4.right = node5
        node5.right = node6
        
        print(minDepth(node2) == 5 ? "Passed" : "Failed")
        print(minDepthBFS(node2) == 5 ? "Passed" : "Failed")
        
    }
}
