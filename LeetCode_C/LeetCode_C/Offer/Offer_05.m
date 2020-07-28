//
//  Offer_05.m
//  LeetCode_C
//
//  Created by cc on 2020/7/28.
//  Copyright © 2020 refraincc. All rights reserved.
//

#import "Offer_05.h"

@implementation Offer_05


- (instancetype)init{
    if (self = [super init]) {
        
        char* s = "We are happy.";
        
        char* r = replaceSpace(s);
        
        printf("%s", r);
        
    }
    return self;
}

//char* replaceSpace(char* s){
//    char *returned=calloc(strlen(s)*3+1,sizeof(char));
//    int i=0,k=0;
//    while(s[i]!='\0'){
//        if(s[i]==' '){
//            returned[k++]='%';
//            returned[k++]='2';
//            returned[k++]='0';
//            i++;
//        }
//        else{
//            returned[k++]=s[i];
//            i++;
//        }
//    }
//    return returned;
//}


char* replaceSpace(char* s){
    
    unsigned long size = strlen(s);
    
    char* str = (char*)calloc(size * 3 + 1, sizeof(char));
    
    
    int idx = 0;
    char* replaceStr = "%20";
    for (int i = 0; i < size; i++) {
        if (s[i] == ' ') {
            for (int j = 0; j < 3; j++) {
                str[idx] = replaceStr[j];
                idx++;
            }
        }else{
            str[idx] = s[i];
            idx++;
        }
    }
    
    return str;
    
}


@end
