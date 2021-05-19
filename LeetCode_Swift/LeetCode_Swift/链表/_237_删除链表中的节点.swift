//
//  _237_删除链表中的节点.swift
//  LeetCode_Swift
//
//  Created by cc on 2021/4/2.
//  Copyright © 2021 refraincc. All rights reserved.
//https://leetcode-cn.com/problems/delete-node-in-a-linked-list/

import Cocoa





class _237_________: NSObject {

    
    override init() {
        super.init()
        
        
        
    }
    
    func deleteNode(_ node: ListNode?) {
        node?.val = node!.next!.val
        node?.next = node!.next!.next
    }

}
