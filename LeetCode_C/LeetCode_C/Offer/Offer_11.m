//
//  Offer_11.m
//  LeetCode_C
//
//  Created by cc on 2020/8/3.
//  Copyright © 2020 refraincc. All rights reserved.
//

#import "Offer_11.h"

@implementation Offer_11

- (instancetype)init{
    if (self = [super init]) {
        
        
        int numCount = 5;
        int num[100] = {2,2,2,0,1};
        int* nums = (int*)malloc(sizeof(int) * numCount);
        
        for (int i = 0 ; i < numCount; i++) {
            nums[i] = num[i];
        }
        
        NSLog(@"%d",minArray(nums, numCount));
        
        
        
    }
    return self;
}

/*
 把一个数组最开始的若干个元素搬到数组的末尾，我们称之为数组的旋转。输入一个递增排序的数组的一个旋转，输出旋转数组的最小元素。例如，数组 [3,4,5,1,2] 为 [1,2,3,4,5] 的一个旋转，该数组的最小值为1。

 示例 1：

 输入：[3,4,5,1,2]
 输出：1
 示例 2：

 输入：[2,2,2,0,1]
 输出：0

 */


/// 二分
int minArray(int* numbers, int numbersSize){

    int low = 0;
    int hig = numbersSize - 1;
    
    while (low < hig) {
        int mid = low + ((hig - low) / 2);
        
        if (numbers[mid] < numbers[hig]) {
            hig = mid;
        }else if (numbers[mid] > numbers[hig]) {
            low = mid + 1;
        }else{
            hig -= 1;
        }
        
    }
    
    return numbers[low];
}


/// 暴力
//int minArray(int* numbers, int numbersSize){
//
//    int temp = numbers[0];
//
//    for (int i = 1; i < numbersSize; i++) {
//
//        if (numbers[i] < temp) {
//            temp = numbers[i];
//        }
//
//    }
//
//    return temp;
//}


@end
