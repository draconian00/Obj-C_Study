//
//  Square.m
//  05.classInheritance
//
//  Created by 송영현 on 2018. 3. 21..
//  Copyright © 2018년 draconian. All rights reserved.
//

#import "Square.h"

@implementation Square

+ (id)squareWithWidth:(int)width {
    Square *obj = [[Square alloc] initWithWidth:width];
    return obj;
}

- (void)setWidth:(int)newWidth {
    [super setWidth:newWidth];
    [super setHeight:newWidth];
}

- (id)init {
    self = [super init];
    if (self) {
        if (width != height) {
            height = width;
        }
    }
    return self;
}

- (id)initWithWidth:(int)newWidth {
    self = [super init];
    if (self) {
        width = newWidth;
        height = newWidth;
    }
    return self;
}

@end
