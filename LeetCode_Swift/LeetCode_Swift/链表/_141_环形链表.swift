//
//  _141_环形链表.swift
//  LeetCode_Swift
//
//  Created by cc on 2021/4/4.
//  Copyright © 2021 refraincc. All rights reserved.
//

import Cocoa

class _141_____: NSObject {
    
    
    override init() {
        super.init()
        
        
    }
    
    
    func hasCycle(_ head: ListNode?) -> Bool {
        
        var slow: ListNode? = head;
        var fast: ListNode? = head?.next
        
        var node: ListNode? = head
        
        
        
        while node?.next != nil {
            
            
//            if slow == fast{
//                return true
//            }
//            
            
            slow = slow?.next
            fast = fast?.next?.next
            
            
            node = node?.next
        }
        
        return false
        
    }
}
