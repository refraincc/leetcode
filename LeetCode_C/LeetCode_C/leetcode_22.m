//
//  leetcode_22.m
//  LeetCode_C
//
//  Created by cc on 2020/9/11.
//  Copyright © 2020 refraincc. All rights reserved.
//

#import "leetcode_22.h"

@implementation leetcode_22


- (instancetype)init{
    
    if (self = [super init]) {
        
    }
    
    return self;
}

- (void)test{
    
    int n = 3;
    
    NSMutableArray *array = [NSMutableArray array];
    NSMutableString *left = [NSMutableString string];
    NSMutableString *right = [NSMutableString string];
    
    for (int i = 0; i < n; i++) {
        
        [left appendString:@"("];
        [right appendString:@")"];
    }
    
    for (int i = 0; i < n - 1; i++) {
        
        [left replaceCharactersInRange:NSMakeRange(n - i, 1) withString:@")"];
        [right replaceCharactersInRange:NSMakeRange(n - i, 1) withString:@"("];
        
    }
    
}

@end
