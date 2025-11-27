//  61. Rotate List.swift
//  Given the head of a linked list, rotate the list to the right by k places.
//
//
//
//  Example 1:
//
//
//  Input: head = [1,2,3,4,5], k = 2
//  Output: [4,5,1,2,3]
//  Example 2:
//
//
//  Input: head = [0,1,2], k = 4
//  Output: [2,0,1]

//  Constraints:
//
//  The number of nodes in the list is in the range [0, 500].
//  -100 <= Node.val <= 100
//  0 <= k <= 2 * 10^9

class Problem_61 {
    func rotateRight(_ head: ListNode?, _ k: Int) -> ListNode? {
        guard k > 0 else { return head }
        var nodes: [ListNode] = []
        var head = head
        var oldHead = head

        // go to the end and store nodes
        while head != nil {
            nodes.append(head!)
            head = head?.next
        }
        guard !nodes.isEmpty else { return nil }
        guard nodes.count > 1 else { return oldHead }
        guard nodes.count != k else { return oldHead }
        // link end with beggining
        nodes[nodes.count - 1].next = nodes[0]
        //recalculate rotate
        print(k % nodes.count)
        let rotate = k >= nodes.count ? k % nodes.count : k
        // cut link
        let cutPos = nodes.count - rotate - 1
        if cutPos < 0 {
            nodes[nodes.count - 1].next = nil
        } else {
            nodes[cutPos].next = nil
        }

        return rotate == 0 ? nodes[0] : nodes[nodes.count - rotate]
    }
}
