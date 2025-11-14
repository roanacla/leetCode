//Given the head of a sorted linked list, delete all duplicates such that each element appears only once. Return the linked list sorted as well.

//Constraints:
//
//The number of nodes in the list is in the range [0, 300].
//-100 <= Node.val <= 100
//The list is guaranteed to be sorted in ascending order.

public class Problem_83: Runner {
    
    public init() {}
    //input: [1,1,2]
    //output: [1,2]
    func deleteDuplicates(_ head: ListNode?) -> ListNode? {
        var memory: Set<Int> = [] //
        var currentNode = head
        var previousNode: ListNode? = head
        while currentNode != nil {
            if !memory.contains(currentNode!.val) {
                memory.insert(currentNode!.val)
                previousNode = currentNode
                currentNode = currentNode!.next
            } else {
                previousNode!.next = currentNode!.next
                currentNode = currentNode!.next
            }
        }
        
        return head
    }
    
    public func runCode() {
        let list1 = ListNode(1,ListNode(1, ListNode(2, ListNode(3, ListNode(3)))))
        var result = deleteDuplicates(list1)
        for i in [1,2,3] {
            print(result?.val == i ? "Passed" : "Failed")
            result = result?.next
        }
    }
}
