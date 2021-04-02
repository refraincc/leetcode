//
//  main.m
//  LeetCode_C
//
//  Created by cc on 2020/7/27.
//  Copyright © 2020 refraincc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Offer_03.h"
#import "Offer_04.h"
#import "Offer_05.h"
#import "Offer_21.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        
//        [[Offer_03 alloc] init];
//        [[Offer_04 alloc] init];
        [[Offer_21 alloc] init];
        
//        char* a = "a";
//        
//        char* b = "a";
//        
//        if (!strcmp(a, b)) {
//            NSLog(@"YES");
//        }else{
//            NSLog(@"NO");
//        }
        
        
        dispatch_queue_t queue= dispatch_queue_create("test", DISPATCH_QUEUE_CONCURRENT);
        dispatch_async(queue, ^{
            NSLog(@"A");
            dispatch_sync(queue, ^{
                NSLog(@"B");
            });
            NSLog(@"C");
        });
        NSLog(@"D");
        
        
        
    }
    return 0;
}
