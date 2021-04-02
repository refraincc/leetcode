//
//  Offer_21.swift
//  LeetCode_Swift
//
//  Created by cc on 2021/3/17.
//  Copyright © 2021 refraincc. All rights reserved.
//

import Cocoa

class Offer_21: NSObject {

    
    override init() {
        
        super.init()
        
        let nums = [1, 2, 3, 4]
        
        
        
        print(exchange(nums))
        
        
    }
    
    func exchange(_ nums: [Int]) -> [Int] {
        

        
        if nums.count <= 1{
            return nums
        }
        
        var i = 0;
        var j = nums.count - 1;
        
        var newNums = nums
        while i != j {
            
            if newNums[i] % 2 == 1 {
                i += 1
                continue
            }
            
            if newNums[j] % 2 == 0 {
                j -= 1
                continue
            }
            newNums.swapAt(i, j)

        }
        return newNums;
    }
    
}


