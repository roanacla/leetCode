public protocol Runner {
    func runCode()
}

public class ProblemRunner: Runner {
    public enum ProblemNumber: Int {
        case twoSum = 1
        case isPalindromeNumber = 9
        case romanToInt = 13
        case mergeTwoLists = 21
        case spiralOrder = 54
        case climbStairs = 70
        case deleteDuplicates = 83
        case maxDepth = 104
        case isSameTree = 100
        case minDepth = 111
        case hasPathSum = 112
        case maxProfit = 121
        case singleNumber = 136
        case hasCycle = 141
        case majorityElement = 169
        case removeElements = 203
        case reverseList = 206
        case minSubArrayLen = 209
        case containsDuplicate = 217
        case invertTree = 226
        case isPalindrome = 234
        case lowestCommonAncestor = 235
        case canAttendMeetings = 252
        case binaryTreePaths = 257
        case validTree = 261
        case missingNumber = 268
        case moveZeroes = 283
        case findDuplicate = 287
        case countComponents = 323
        case firstUniqChar = 387
        case setZeroes = 442
        case findAllNumbersInADissapeared = 448
        case findTargetSumWays = 494
        case diameterOfBinaryTree = 543
        case checkInclusion = 567
        case isSubtree = 572
        case mergeTrees = 617
        case averageOfLevels = 637
        case findMaxAverage = 643
        case binarySearch = 704
        case myHashSet = 705
        case nextGreatestLetter = 744
        case backspaceCompare = 844
        case middleNode = 876
        case sortedSquares = 977
        case construct2DArray = 2022
        case out_BFS = -1
    }
    
    var problemToRun: ProblemNumber = .missingNumber
    
    public init(problemToRun: Int) {
        switch problemToRun{
        case -1:
            self.problemToRun = .out_BFS
        case 1:
            self.problemToRun = .twoSum
        case 9:
            self.problemToRun = .isPalindromeNumber
        case 13:
            self.problemToRun = .romanToInt
        case 21:
            self.problemToRun = .mergeTwoLists
        case 54:
            self.problemToRun = .spiralOrder
        case 70:
            self.problemToRun = .climbStairs
        case 83:
            self.problemToRun = .deleteDuplicates
        case 100:
            self.problemToRun = .isSameTree
        case 104:
            self.problemToRun = .maxDepth
        case 111:
            self.problemToRun = .minDepth
        case 112:
            self.problemToRun = .hasPathSum
        case 121:
            self.problemToRun = .maxProfit
        case 136:
            self.problemToRun = .singleNumber
        case 141:
            self.problemToRun = .hasCycle
        case 169:
            self.problemToRun = .majorityElement
        case 203:
            self.problemToRun = .removeElements
        case 206:
            self.problemToRun = .reverseList
        case 209:
            self.problemToRun = .minSubArrayLen
        case 217:
            self.problemToRun = .containsDuplicate
        case 226:
            self.problemToRun = .invertTree
        case 234:
            self.problemToRun = .isPalindrome
        case 235:
            self.problemToRun = .lowestCommonAncestor
        case 252:
            self.problemToRun = .canAttendMeetings
        case 257:
            self.problemToRun = .binaryTreePaths
        case 261:
            self.problemToRun = .validTree
        case 268:
            self.problemToRun = .missingNumber
        case 287:
            self.problemToRun = .findDuplicate
        case 283:
            self.problemToRun = .moveZeroes
        case 323:
            self.problemToRun = .countComponents
        case 387:
            self.problemToRun = .firstUniqChar
        case 442:
            self.problemToRun = .setZeroes
        case 448:
            self.problemToRun = .findAllNumbersInADissapeared
        case 494:
            self.problemToRun = .findTargetSumWays
        case 543:
            self.problemToRun = .diameterOfBinaryTree
        case 567:
            self.problemToRun = .checkInclusion
        case 572:
            self.problemToRun = .isSubtree
        case 617:
            self.problemToRun = .mergeTrees
        case 637:
            self.problemToRun = .averageOfLevels
        case 643:
            self.problemToRun = .findMaxAverage
        case 704:
            self.problemToRun = .binarySearch
        case 705:
            self.problemToRun = .myHashSet
        case 744:
            self.problemToRun = .nextGreatestLetter
        case 844:
            self.problemToRun = .backspaceCompare
        case 876:
            self.problemToRun = .middleNode
        case 977:
            self.problemToRun = .sortedSquares
        case 2022:
            self.problemToRun = .construct2DArray
        default:
            return
        }
    }
    
    public func runCode() {
        switch problemToRun {
        case .out_BFS:
            Problem_o_1().runCode()
        case .twoSum:
            Problem_1().runCode()
        case .isPalindromeNumber:
            Problem_9().runCode()
        case .romanToInt:
            Problem_13().runCode()
        case .mergeTwoLists:
            Problem_21().runCode()
        case .spiralOrder:
            Problem_54().runCode()
        case .climbStairs:
            Problem_70().runCode()
        case .deleteDuplicates:
            Problem_83().runCode()
        case .isSameTree:
            Problem_100().runCode()
        case .maxDepth:
            Problem_104().runCode()
        case .minDepth:
            Problem_111().runCode()
        case .hasPathSum:
            Problem_112().runCode()
        case .maxProfit:
            Problem_121().runCode()
        case .singleNumber:
            Problem_136().runCode()
        case .hasCycle:
            Problem_141().runCode()
        case .majorityElement:
            Problem_169().runCode()
        case .removeElements:
            Problem_203().runCode()
        case .reverseList:
            Problem_206().runCode()
        case .minSubArrayLen:
            Problem_209().runCode()
        case .containsDuplicate:
            Problem_217().runCode()
        case .invertTree:
            Problem_226().runCode()
        case .isPalindrome:
            Problem_234().runCode()
        case .lowestCommonAncestor:
            Problem_235().runCode()
        case .canAttendMeetings:
            Problem_252().runCode()
        case .binaryTreePaths:
            Problem_257().runCode()
        case .validTree:
            Problem_261().runCode()
        case .missingNumber:
            Problem_268().runCode()
        case .moveZeroes:
            Problem_283().runCode()
        case .findDuplicate:
            Problem_287().runCode()
        case .countComponents:
            Problem_323().runCode()
        case .firstUniqChar:
            Problem_387().runCode()
        case .setZeroes:
            Problem_442().runCode()
        case .findAllNumbersInADissapeared:
            Problem_448().runCode()
        case .findTargetSumWays:
            Problem_494().runCode()
        case .diameterOfBinaryTree:
            Problem_543().runCode()
        case .checkInclusion:
            Problem_567().runCode()
        case .isSubtree:
            Problem_572().runCode()
        case .mergeTrees:
            Problem_617().runCode()
        case .averageOfLevels:
            Problem_637().runCode()
        case .findMaxAverage:
            Problem_643().runCode()
        case .binarySearch:
            Problem_704().runCode()
        case .myHashSet:
            Problem_705().runCode()
        case .nextGreatestLetter:
            Problem_744().runCode()
        case .backspaceCompare:
            Problem_844().runCode()
        case .middleNode:
            Problem_876().runCode()
        case .sortedSquares:
            Problem_977().runCode()
        case .construct2DArray:
            Problem_2022().runCode()
        }
    }
}
