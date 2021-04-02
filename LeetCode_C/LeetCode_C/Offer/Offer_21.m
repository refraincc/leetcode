//
//  Offer_21.m
//  LeetCode_C
//
//  Created by cc on 2021/3/11.
//  Copyright © 2021 refraincc. All rights reserved.
//

/*
 面试题 21.调整数组顺序使奇数位于偶数前面
 输入：nums = [1,2,3,4]
 输出：[1,3,2,4]
 注：[3,1,2,4] 也是正确的答案之一。
 1 <= nums.length <= 50000
 1 <= nums[i] <= 10000
 */


#import "Offer_21.h"

@implementation Offer_21


- (instancetype)init{
    
    if (self = [super init]) {
        
        
        int a = 945;

        int *p = &a;
        
        int *c = (int*)&a;
        
        NSLog(@"");
        
        
        
        
        
        
        
        
        
        int lenght = 4;
        
        int nums[10000] = { 1,2, 3, 4};
        
        int add = 4;
        
//        exchange(nums, lenght, &add);
        
        NSLog(@"%d", exchange(nums, lenght, &add));
        
//        int *a = 0x000001;
//
//        int *b = a;
        
        
        
    }
    
    return self;
}

int* exchange(int* nums, int numsSize, int* returnSize){
    if (numsSize <= 1) return nums;
    
    int i = 0;
    int j = numsSize - 1;
    
    int* newnums = (int*)malloc(sizeof(int) * numsSize);
    
    
    returnSize = &numsSize;
    
    NSLog(@"%d", (int)returnSize);
    
    
    while (i != j) {
        
        if (nums[i] % 2 == 1) {
            i++;
            continue;
        }
        
        if (nums[j] % 2 == 0) {
            j--;
            continue;
        }
        
        int temp = nums[i];
        nums[i] = nums[j];
        nums[j] = temp;
        
    }
    
    for (int i = 0; i < numsSize; i++) {
        newnums[i] = nums[i];
        
        NSLog(@"%d", newnums[i]);
    }
    
    
    
    
    
    
    return newnums;
}

@end
