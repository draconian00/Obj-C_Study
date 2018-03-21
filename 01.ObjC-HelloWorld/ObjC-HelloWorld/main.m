//
//  main.m
//  ObjC-HelloWorld
//
//  Created by 송영현 on 2018. 3. 19..
//  Copyright © 2018년 draconian. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // 정수형 : %d, %u (unsigned)
        //        %ld, %lu (long 타입)
        
        // 실수형 : %e, %e (지수형)
        
        // 16진수, 8진수 : %x, %o
        
        // 객체형 : %@
    
        int a = 1;
        NSString *str = @"test";
        NSLog(@"Hello, Objective C!\nint a = %d, NSString str = \"%@\"", a, str);
        
    }
    return 0;
}
