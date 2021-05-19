//
//  ListNode.swift
//  LeetCode_Swift
//
//  Created by cc on 2021/4/2.
//  Copyright © 2021 refraincc. All rights reserved.
//

import Cocoa

public class ListNode {
    public var val: Int
    public var next: ListNode?
    
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
    
    public init(_ val: Int, _ next: ListNode?) {
        self.val = val;
        self.next = next;
        
    }
}
