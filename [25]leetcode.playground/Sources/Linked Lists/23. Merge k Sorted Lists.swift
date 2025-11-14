// You are given an array of k linked-lists lists, each linked-list is sorted in ascending order.
// 
// Merge all the linked-lists into one sorted linked-list and return it.
// 
// 
// 
// Example 1:
// 
// Input: lists = [[1,4,5],[1,3,4],[2,6]]
// Output: [1,1,2,3,4,4,5,6]
// Explanation: The linked-lists are:
// [
//   1->4->5,
//   1->3->4,
//   2->6
// ]
// merging them into one sorted linked list:
// 1->1->2->3->4->4->5->6
// Example 2:
// 
// Input: lists = []
// Output: []
// Example 3:
// 
// Input: lists = [[]]
// Output: []

class Problem_23: Runner {
    func mergeKLists(_ lists: [ListNode?]) -> ListNode? {
        guard lists.count > 0 else { return nil }
        var lists = lists
        var merged: [ListNode?] = lists

        while lists.count > 1 {
            merged = []
            for i in stride(from: 0, to: lists.count, by: 2) {
                let nodeOne = lists[i]
                if i + 1 < lists.count {
                    let nodeTwo = lists[i + 1]
                    merged.append(mergeList(nodeOne, nodeTwo))
                } else {
                    merged.append(nodeOne)
                }
            }
            
            lists = merged
        }

        return merged.compactMap { $0 }.first
    }

    func mergeList(_ nodeOne: ListNode?, _ nodeTwo: ListNode?) -> ListNode? {
        var nodeOne: ListNode? = nodeOne
        var nodeTwo: ListNode? = nodeTwo
        let auxNode = ListNode(-1)
        var headNode = auxNode

        while nodeOne != nil && nodeTwo != nil {
            if nodeOne!.val <= nodeTwo!.val {
                headNode.next = nodeOne
                nodeOne = nodeOne?.next
            } else {
                headNode.next = nodeTwo
                nodeTwo = nodeTwo?.next
            }
            headNode = headNode.next!
        }

        headNode.next = nodeOne ?? nodeTwo

        return auxNode.next
    }
    
    func runCode() {
        //
    }
}
