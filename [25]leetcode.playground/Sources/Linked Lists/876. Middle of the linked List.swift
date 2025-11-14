//Given the head of a singly linked list, return the middle node of the linked list.
//
//If there are two middle nodes, return the second middle node.
//The number of nodes in the list is in the range [1, 100].
//1 <= Node.val <= 100

public class Problem_876: Runner {
    
    public init() {}
//    [3,4,5,6,7]
//    [3,4,5,6]
//    [3,4,5]
//    [3,4]
//    [3]
    func middleNode(_ head: ListNode?) -> ListNode? {
        guard let _ = head else { return nil }
        guard let _ = head?.next else { return head }
        
        var firstPointer = head
        var secondPointer = head?.next
        
        while secondPointer != nil {
            firstPointer = firstPointer?.next
            secondPointer = secondPointer?.next?.next
        }
        
        return firstPointer
    }
    
    public func runCode() {
        let list1 = ListNode(1,ListNode(1, ListNode(2, ListNode(3, ListNode(3)))))
        var result = middleNode(list1)
        for i in [1,2,3] {
            print(result?.val == i ? "Passed" : "Failed")
            result = result?.next
        }
    }
}
