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
        // find the middle
        var slow: ListNode? = head
        var fast: ListNode? = head
        
        while fast != nil {
            slow = slow?.next
            fast = fast?.next?.next
        }
        
        //reverse second list
        var middle: ListNode? = slow
        var previous: ListNode? = nil
        
        while middle != nil {
            let next = middle?.next
            middle?.next = previous
            previous = middle
            middle = next
        }
        
        //merge 🟠 Pay attention
        var secondList = previous
        var firstList = head
        
        while firstList != nil {
            let fNext = firstList?.next
            firstList?.next = secondList
            firstList = secondList
            secondList = fNext
        }
        
    }
}
