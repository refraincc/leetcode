//
//  _206_反转链表.swift
//  LeetCode_Swift
//
//  Created by cc on 2021/4/2.
//  Copyright © 2021 refraincc. All rights reserved.
//https://leetcode-cn.com/problems/reverse-linked-list/

import Cocoa

class _206_____: NSObject {

    
    override init() {
        super.init()
        let node5 = ListNode.init(5, nil)
        let node4 = ListNode.init(4, node5)
        let node3 = ListNode.init(3, node4)
        let node2 = ListNode.init(2, node3)
        let node1 = ListNode.init(1, node2)
        
        let head: ListNode = reverseList(node1)!
        var temp: ListNode? = head
        
        while temp != nil {
            
            print(temp?.val);
            
            temp = temp?.next
        }
        
        
        
    }
    
    
//    func reverseList(_ head: ListNode?) -> ListNode? {
//        if head?.next  == nil{
//            return nil
//        }
//
//        let temp = head?.next?.next;
//
//        head?.next?.next = head
//
//        return reverseList(temp)
//    }
    
//
    func reverseList(_ head: ListNode?) -> ListNode? {

        var prev: ListNode? = nil // nil
        var curr: ListNode? = head
        
        while curr?.next != nil {
            let next = curr?.next
            curr?.next = prev
            prev = curr
            curr = next
        }
        
        return prev
    }
}
