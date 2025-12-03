/*
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init() { self.val = 0; self.next = nil; }
 *     public init(_ val: Int) { self.val = val; self.next = nil; }
 *     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 * }
 */
class Problem_143 {

    func reorderList(_ head: ListNode?) {
        var slow = head
        var fast = head?.next

        // find the middle
        while fast != nil {
            let previous = slow
            slow = slow?.next
            fast = fast?.next?.next
            if fast == nil {
                previous?.next = nil
            }
        }

        var middle = slow

        var previous: ListNode? = nil

        while middle != nil {
            let next = middle?.next
            middle?.next = previous
            previous = middle
            middle = next
        }

        var headTwo = previous

        // merge
        var headOne = head
        
        while headTwo != nil {
            let oneNext = headOne?.next
            let twoNext = headTwo?.next
            headOne?.next = headTwo
            headTwo?.next = oneNext ?? twoNext
            headOne = oneNext
            headTwo = twoNext
        }

    }
}
