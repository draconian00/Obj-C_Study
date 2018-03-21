//
//  Rectangle.m
//  05.classInheritance
//
//  Created by 송영현 on 2018. 3. 21..
//  Copyright © 2018년 draconian. All rights reserved.
//

#import "Rectangle.h"

@implementation Rectangle

+ (id)rectangle {
    Rectangle *obj = [[Rectangle alloc] init];
    return obj;
}

+ (id)rectangle:(int)width height:(int)height {
    Rectangle *obj = [[Rectangle alloc] initWithWidth:width height:height];
    return obj;
}

- (id)init {
    self = [super init];
    
    if (self) {
        width = 10;
        height = 20;
    }
    return self;
}

- (id)initWithWidth:(int)newWidth height:(int)newHeight {
    self = [super init];
    if (self) {
        width = newWidth;
        height = newHeight;
    }
    return self;
}

- (void)setWidth:(int)newWidth {
    width = newWidth;
}
- (int)width {
    return width;
}

- (void)setHeight:(int)newHeight {
    height = newHeight;
}
- (int)height {
    return height;
}

- (void)setWidth:(int)newWidth height:(int)newHeight {
    [self setWidth:newWidth];
    [self setHeight:newHeight];
}

- (int)size {
    return width * height;
}

- (BOOL)isSquare {
    return width == height;
}

@end
