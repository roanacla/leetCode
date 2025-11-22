// 92. Reverse Linked List II.swift
// Given the head of a singly linked list and two integers left and right where left <= right, reverse the nodes of the list from position left to position right, and return the reversed list.
//
//
//
// Example 1:
//
//
// Input: head = [1,2,3,4,5], left = 2, right = 4
// Output: [1,4,3,2,5]
// Example 2:
//
// Input: head = [5], left = 1, right = 1
// Output: [5]

class Problem_92 {
    func reverseBetween(_ head: ListNode?, _ left: Int, _ right: Int) -> ListNode? {
        var head = head
        var dummy: ListNode? = ListNode(-1)
        dummy?.next = head
        var previous = dummy
        var counter = 1

        while head != nil {
            if counter == left {
                let (start, end, afterEnd) = reverseLinkedList(head, right - left)
                previous?.next = start
                end?.next = afterEnd
                break
            } else {
                previous = head
                head = head?.next
            }
            counter += 1
        }

        return dummy?.next
    }

    func reverseLinkedList(_ head: ListNode?, _ limit: Int) -> (ListNode?, ListNode?, ListNode?) {
        var head = head
        var oldHead = head
        var previous: ListNode? = nil
        var counter = 0
        
        while head != nil, counter <= limit {
            let next = head?.next
            head?.next = previous
            previous = head
            head = next
            counter += 1
        }

        return (previous, oldHead, head)
    }
}
