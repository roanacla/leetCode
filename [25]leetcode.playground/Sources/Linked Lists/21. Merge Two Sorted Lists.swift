//21. Merge Two Sorted Lists
//You are given the heads of two sorted linked lists list1 and list2.
//
//Merge the two lists into one sorted list. The list should be made by splicing together the nodes of the first two lists.
//
//Return the head of the merged linked list.

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}

public class Problem_21: Runner {
    func mergeTwoLists(_ list1: ListNode?, _ list2: ListNode?) -> ListNode? {
        //This problem can we solved with two pointers
        //Start traversing linked list with two pointers
        //ListNode_1 is the master and result
        
        // if two inputs are nil, return nil
        // if one input is nil, return the other
        guard let list1, let list2 else {
            return list1 ?? list2
        }
        //(2,1)(2,3)(4,3)(4,4)
        if list1.val <= list2.val {
            list1.next = mergeTwoLists(list1.next, list2)
            return list1
        } else {
            list2.next = mergeTwoLists(list1, list2.next)
            return list2
        }
        //[1,1,2,3,4,4]
    }
    
    func mergeTwoListsTwo(_ list1: ListNode?, _ list2: ListNode?) -> ListNode? {
        guard var list1, var list2 else { return list1 ?? list2 }
        var result = ListNode()
        //select the start
        if list1.val <= list2.val {
            result = list1
        } else {
            result = list2
        }
        
        while list1.next != nil || list2.next != nil {
            print("in: \(list1.val)-\(list2.val)")
            if list1.val <= list2.val {
                let temp1 = list1.next
                list1.next = list2
                if let temp1 {
                    list1 = temp1
                }
            } else {
                let temp2 = list2.next
                list2.next = list1
                if let temp2 {
                    list2 = temp2
                }
            }
            print("out: \(list1.val)-\(list2.val)")
        }
        
        return result
    }
    
    public func runCode() {
        let list1 = ListNode(1,ListNode(2, ListNode(4)))
        let list2 = ListNode(1, ListNode(3, ListNode(4)))
        var result = mergeTwoLists(list1, list2)
        for i in [1,1,2,3,4,4] {
            print(result?.val == i ? "Passed" : "Failed")
            result = result?.next
        }
        
        print("Test second algorithm")
        let list3 = ListNode(1,ListNode(2, ListNode(4)))
        let list4 = ListNode(1, ListNode(3, ListNode(4)))
        var result2 = mergeTwoListsTwo(list3, list4)
        for i in [1,1,2,3,4,4] {
            print(result2?.val == i ? "Passed" : "Failed")
            result2 = result2?.next
        }
        
    }
}
