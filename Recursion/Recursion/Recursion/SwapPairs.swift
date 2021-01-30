//
//  SwapPairs.swift
//  Recursion
//
//  Created by Roger Navarro on 10/21/20.
//

import Foundation

public class ListNode {
  public var val: Int
  public var next: ListNode?
  public init() { self.val = 0; self.next = nil; }
  public init(_ val: Int) { self.val = val; self.next = nil; }
  public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
  
  func iterate(visit: (Int)->Void ) {
    visit(val)
    next?.iterate(visit: visit)
  }
}

func swapPairs(_ head: ListNode?) -> ListNode? {
  // base case
  guard let head = head else { return nil }
  guard let newHead = head.next else { return head }
  // logic
  head.next = newHead.next
  newHead.next = head
  // call recursion
  newHead.next?.next = swapPairs(newHead.next?.next)
  return newHead
}

