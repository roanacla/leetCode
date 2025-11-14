//
//  141. Linked List Cycle.swift
//  
//
//  Created by Roger Navarro Claros on 8/26/25.
//

public class Problem_141: Runner {
    public init() {}
    
    public func hasCycle(_ head: ListNode?) -> Bool {
//        guard let _ = head, let _ = head!.next else { return false }
        var currentNode = head
        while currentNode != nil {
            if currentNode!.val == Int.max {
                return true
            } else {
                currentNode!.val = Int.max
                currentNode = currentNode!.next
            }
        }
        
        return false
    }
    
    // This problem can also be solved by using two pointers. One is the slow pointer and the other is the fast pointer. if they meet, it means there is a cycle.
    
    public func runCode() {
        let node0 = ListNode(3)
        let node1 = ListNode(2)
        let node2 = ListNode(0)
        let node3 = ListNode(-4)
        
        node0.next = node1
        node1.next = node2
        node2.next = node3
        node3.next = node1
        
        print("141. Linked list cycle")
        print(hasCycle(node0) == true ? "Passed" : "Failed")
    }
}
