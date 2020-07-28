//
//  Offer_03.m
//  LeetCode_C
//
//  Created by cc on 2020/7/27.
//  Copyright © 2020 refraincc. All rights reserved.
//
/*
 找出数组中重复的数字。


 在一个长度为 n 的数组 nums 里的所有数字都在 0～n-1 的范围内。数组中某些数字是重复的，但不知道有几个数字重复了，也不知道每个数字重复了几次。请找出数组中任意一个重复的数字。

 示例 1：

 输入：
 [2, 3, 1, 0, 2, 5, 3]
 输出：2 或 3
  

 限制：

 2 <= n <= 100000

 来源：力扣（LeetCode）
 链接：https://leetcode-cn.com/problems/shu-zu-zhong-zhong-fu-de-shu-zi-lcof
 著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。
 */
#import "Offer_03.h"

@implementation Offer_03

- (instancetype)init{
    if (self = [super init]) {
        
        int numCount = 7;
        int num[100] = {2, 3, 1, 0, 2, 5, 3};
        int* nums = (int*)malloc(sizeof(int) * numCount);
        
        for (int i = 0 ; i < numCount; i++) {
            nums[i] = num[i];
        }
        findRepeatNumber(nums, numCount);
    }
    return self;
}


int findRepeatNumber(int* nums, int numsSize){
    
//    for (int i = 0; i < numsSize; i++) {
//        for (int j = i; j < numsSize; j++) {
//            if (i != j && nums[i] == nums[j]) {
//                return nums[i];
//            }
//        }
//    }
    
    
    char* temp = calloc(numsSize, sizeof(char));
    
    for (int i = 0; i < numsSize; i++) {
        
        if (temp[nums[i]] == 0) {
            temp[nums[i]] = 1;
        }else{
            return nums[i];
        }
    }
    
    return -1;
}


@end
