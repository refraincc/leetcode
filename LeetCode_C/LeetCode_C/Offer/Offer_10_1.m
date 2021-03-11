//
//  Offer_10_1.m
//  LeetCode_C
//
//  Created by cc on 2020/7/28.
//  Copyright © 2020 refraincc. All rights reserved.
//

#import "Offer_10_1.h"

@implementation Offer_10_1

- (instancetype)init{
    if (self = [super init]) {
        
        
//        NSLog(@"%d", fib(1));
//        NSLog(@"%d", fib(2));
//        NSLog(@"%d", fib(3));
//        NSLog(@"%d", fib(4));
//        NSLog(@"%d", fib(5));
//        NSLog(@"%d", fib(6));
//        NSLog(@"%d", fib(7));
        NSLog(@"%d", fib(95));
//        for (int i = 0; i < 100; i++) {
//            NSLog(@"idx = %d  ,%d", i, fib(i));
//        }
        
        
    }
    return self;
}



int fib(int n){

    if (n == 0) return 0;

    int i = 0;
    int j = 1;
    int sum = 1;
    
    while (n > 1) {
        sum = (i + j) % 1000000007;
        i = j;
        j = sum;
        n--;
    }

    return sum;
}


@end
