//
//  Offer-04.swift
//  LeetCode_Swift
//
//  Created by cc on 2020/7/28.
//  Copyright © 2020 refraincc. All rights reserved.
//

import Cocoa

class Offer_04: NSObject {
    
    
    func findNumberIn2DArray(_ matrix: [[Int]], _ target: Int) -> Bool {
        
        if matrix.count <= 0 || matrix.first!.count <= 0 {
            return false
        }
        
        for subMatrix in matrix {
            
            if subMatrix.last! < target {
                continue
            }
            
            let low = 0;
            var hig = subMatrix.count - 1;
            
            
            while low <= hig {
                let num = subMatrix[hig];
                
                if num == target {
                    return true
                }else if num < target {
//                    low += 1
                    break
                }else {
                    hig -= 1
                }
            }
            
        }
        return false
    }
    
    /*
    func findNumberIn2DArray(_ matrix: [[Int]], _ target: Int) -> Bool {
        
        for subMatrix in matrix {
            
            if subMatrix.last! < target {
                continue
            }
            
            var low = 0;
            var hig = subMatrix.count;
            
            while low < hig {
                let mid = low + (hig - low) / 2
                
                if subMatrix[mid] < target {
                    low += 1
                }else if target < subMatrix[mid] {
                    hig -= 1
                }else {
                    return true
                }
                
            }
            
        }
        return false
    }*/
}
