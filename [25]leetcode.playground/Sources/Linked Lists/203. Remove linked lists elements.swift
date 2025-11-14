//
//  203. Remove linked lists elements.swift
//  
//
//  Created by Roger Navarro Claros on 9/4/25.
//

//Given the head of a linked list and an integer val, remove all the nodes of the linked list that has Node.val == val, and return the new head.

public class Problem_203: Runner {

    func removeElements(_ head: ListNode?, _ val: Int) -> ListNode? {
        guard let head else { return nil }
        let beforeHead = ListNode(-1)
        beforeHead.next = head
        var current = beforeHead
        
        while let nextNode = current.next {
            if nextNode.val == val {
                current.next = nextNode.next
            } else {
                current = nextNode
            }
        }
        
        return beforeHead.next
    }
    
    public func runCode() {
        print("203. Remove Linked List Elements")
        var root: ListNode? = ListNode(1, ListNode(2, ListNode(6, ListNode(3, ListNode(4, ListNode(5, ListNode(6)))))))
        root = removeElements(root, 6)
        for i in 0..<5 {
            print(root?.val == i + 1 ? "Passed" : "Failed")
            root = root?.next
        }
    }
}
