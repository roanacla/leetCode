//
//  234 Palindrome Linked Lists.swift
//  
//
//  Created by Roger Navarro Claros on 9/4/25.
//

public class Problem_234: Runner {
    func isPalindrome(_ head: ListNode?) -> Bool {
        var slow = head
        var fast = head?.next?.next
        
        // go to the middle
        while fast != nil {
            slow = slow?.next
            fast = fast?.next?.next
        }
        
        //reverse
        var current: ListNode? = slow
        var previous: ListNode? = nil
        while current != nil {
            let temp = current?.next
            current?.next = previous
            previous = current
            current = temp
        }
        
        //compare
        current = previous
        var head = head
        while current != nil && head != nil {
            if current?.val != head?.val {
                return false
            }
            current = current?.next
            head = head?.next
        }
        
        return true
    }
    
    public func runCode() {
        print("234. Palindrome Linked List")
        let head = ListNode(1, ListNode(2, ListNode(2, ListNode(1))))
        print(isPalindrome(head) == true ? "Passed" : "Failed")
        
        let head2 = ListNode(1, ListNode(2, ListNode(3, ListNode(2, ListNode(1)))))
        print(isPalindrome(head2) == true ? "Passed" : "Failed")
    }
}
