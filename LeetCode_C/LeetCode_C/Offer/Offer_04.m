//
//  Offer_04.m
//  LeetCode_C
//
//  Created by cc on 2020/7/28.
//  Copyright © 2020 refraincc. All rights reserved.
//

#import "Offer_04.h"

@implementation Offer_04

- (instancetype)init{
    if (self = [super init]) {
        
        
        int numCount = 5;
        int num1[5] = {1,   4,  7, 11, 15};
        int num2[5] = {2,   5,  8, 12, 19};
        int num3[5] = {3,   6,  9, 16, 22};
        int num4[5] = {10, 13, 14, 17, 24};
        int num5[5] = {18, 21, 23, 26, 30};
        
        
        int* nums1 = (int*)malloc(sizeof(int) * numCount);
        int* nums2 = (int*)malloc(sizeof(int) * numCount);
        int* nums3 = (int*)malloc(sizeof(int) * numCount);
        int* nums4 = (int*)malloc(sizeof(int) * numCount);
        int* nums5 = (int*)malloc(sizeof(int) * numCount);
        
        for (int i = 0 ; i < numCount; i++) {
            nums1[i] = num1[i];
            nums2[i] = num2[i];
            nums3[i] = num3[i];
            nums4[i] = num4[i];
            nums5[i] = num5[i];
        }
        
        int** nums = (int**)malloc(sizeof(int*) * numCount);
        
        nums[0] = num1;
        nums[1] = num2;
        nums[2] = num3;
        nums[3] = num4;
        nums[4] = num5;
        
        findNumberIn2DArray(nums, numCount, &numCount, 99);
        
    }
    return self;
}





/*
 在一个 n * m 的二维数组中，每一行都按照从左到右递增的顺序排序，每一列都按照从上到下递增的顺序排序。请完成一个函数，输入这样的一个二维数组和一个整数，判断数组中是否含有该整数。

  

 示例:

 现有矩阵 matrix 如下：

 [
   [1,   4,  7, 11, 15],
   [2,   5,  8, 12, 19],
   [3,   6,  9, 16, 22],
   [10, 13, 14, 17, 24],
   [18, 21, 23, 26, 30]
 ]
 给定 target = 5，返回 true。

 给定 target = 20，返回 false。

  

 限制：

 0 <= n <= 1000

 0 <= m <= 1000



 来源：力扣（LeetCode）
 链接：https://leetcode-cn.com/problems/er-wei-shu-zu-zhong-de-cha-zhao-lcof
 著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。
 */


bool findNumberIn2DArray(int** matrix, int matrixSize, int* matrixColSize, int target){

    
    int colSize = *matrixColSize;
    
    for (int i = 0; i < matrixSize; i++) {
        
        int low = 0;
        int hig = colSize;
        
        while (low <= hig) {
            int mid = low + (hig - low) / 2;
            if (matrix[i][mid] < target) {
                low++;
            }else if (target < matrix[i][mid]) {
                hig--;
            }else{
                return true;
            }
        }
        
    }
    return false;
}


@end
