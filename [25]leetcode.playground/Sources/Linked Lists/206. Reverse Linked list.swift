//
//  206. Reverse Linked list.swift
//  
//
//  Created by Roger Navarro Claros on 8/29/25.
//

public class Problem_206: Runner {
    public init() {}
//    [1,2,3,4,5]
//     *
    func reverseList(_ head: ListNode?) -> ListNode? {
        var currentNode = head
        var previousNode: ListNode? = nil
        
        while currentNode != nil {
            let temp = currentNode?.next
            currentNode?.next = previousNode
            previousNode = currentNode
            currentNode = temp
        }
        
        return previousNode
    }
    
    public func runCode() {
        let list1 = ListNode(1,ListNode(2, ListNode(3, ListNode(4, ListNode(5)))))
        var result = reverseList(list1)
        for i in [5,4,3,2,1] {
            print(result?.val == i ? "Passed" : "Failed")
            result = result?.next
        }
    }
}
