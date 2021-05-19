//
//  Offer_06.swift
//  LeetCode_Swift
//
//  Created by cc on 2021/5/12.
//  Copyright © 2021 refraincc. All rights reserved.
//

import Cocoa

class Offer_06: NSObject {
    
    
    override init() {
        super.init()
        
        
        let node5 = ListNode.init(5, nil)
        let node4 = ListNode.init(4, node5)
        let node3 = ListNode.init(3, node4)
        let node2 = ListNode.init(2, node3)
        let node1 = ListNode.init(1, node2)
        
        var array = Solution.init().reversePrint(node1)
        
        print(array);
        
        
    }
    
}


class Solution {
    func reversePrint(_ head: ListNode?) -> [Int] {
        var array = Array<Int>.init()
        
        var prev: ListNode? = nil
        var curr: ListNode? = head
        
        while curr != nil {
            
        }
        
        
        
        
        return array
    }
}


class Solution1 {
    func reversePrint(_ head: ListNode?) -> [Int] {
        var array = Array<Int>.init()
        
        var curr: ListNode? = head
        
        while curr != nil {
            array.insert(curr!.val, at: 0)
            curr = curr?.next
        }
        
        return array
    }
}
