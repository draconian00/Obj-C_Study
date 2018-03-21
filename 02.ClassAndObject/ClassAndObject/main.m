//
//  main.m
//  ClassAndObject
//
//  Created by 송영현 on 2018. 3. 19..
//  Copyright © 2018년 draconian. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSObject *obj = [[NSObject alloc] init];
        NSLog(@"Object : %@", obj);
        
        NSObject *obj2 = obj;
        NSLog(@"\nobj : %@,\nobj2 : %@", obj, obj2);
    }
    return 0;
}
