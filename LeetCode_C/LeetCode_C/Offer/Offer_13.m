//
//  Offer_13.m
//  LeetCode_C
//
//  Created by cc on 2020/8/19.
//  Copyright © 2020 refraincc. All rights reserved.
//

#import "Offer_13.h"

@implementation Offer_13

- (instancetype)init{
    if (self = [super init]) {
        movingCount(38,15, 9);
        
        int a = 79;
        
        
        
    }
    return self;
}

/*
 地上有一个m行n列的方格，从坐标 [0,0] 到坐标 [m-1,n-1] 。一个机器人从坐标 [0, 0] 的格子开始移动，它每次可以向左、右、上、下移动一格（不能移动到方格外），也不能进入行坐标和列坐标的数位之和大于k的格子。例如，当k为18时，机器人能够进入方格 [35, 37] ，因为3+5+3+7=18。但它不能进入方格 [35, 38]，因为3+5+3+8=19。请问该机器人能够到达多少个格子？
 示例 1：
 

 输入：m = 2, n = 3, k = 1
 输出：3
 示例 2：

 输入：m = 3, n = 1, k = 0
 输出：1
 提示：

 1 <= n,m <= 100
 0 <= k <= 20

 */



/*
     count = (m - 1) + (n - 1);
 */
int movingCount(int m, int n, int k){
    
    
    int numCount = m;
    int subCount = n;
    int**nums = (int**)malloc(sizeof(int*) * numCount);
    
    for (int i = 0 ; i < numCount; i++) {
        
        int *num = (int*)malloc(sizeof(int) * subCount);
    
        for (int j = 0; j < subCount; j++) {
            num[j] = 0;
        }
        nums[i] = num;
    }
    
    
    int count = 0;
    
    for (int i = 0; i < numCount; i++) {
        for (int j = 0; j < subCount; j++) {
            int a = i / 10 + i % 10;
            int b = j / 10 + j % 10;
            int sum = a + b ;
            if (sum <= k) {
                count += 1;
            }else{
                
                NSLog(@"(%d, %d) sum = %d", i , j ,sum);
                
                if (a > k) {
                    return count;
                }
                
//                break;
            }
        }
    }
    
    
    return count;
}

@end
