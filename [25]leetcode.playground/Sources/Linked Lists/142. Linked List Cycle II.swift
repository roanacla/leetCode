import Foundation

class Problem_142 {
    func detectCycle(_ head: ListNode?) -> ListNode? {
        var slow = head?.next
        var fast = head?.next?.next

        while fast != nil {
            if slow === fast {
                fast = head
                while fast !== slow {
                    fast = fast?.next
                    slow = slow?.next
                }
                return slow
            }
            slow = slow?.next
            fast = fast?.next?.next
        }

        return nil
    }
}
