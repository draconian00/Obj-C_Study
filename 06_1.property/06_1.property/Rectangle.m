//
//  Retangle.m
//  06_1.property
//
//  Created by 송영현 on 2018. 4. 1..
//  Copyright © 2018년 draconian. All rights reserved.
//

#import "Rectangle.h"

@implementation Rectangle

- (int)size {
    //    return s(nonatomic) elf.width * self.height;
    return _width * _height;
}

- (void)setWidth:(int)width {
    if (width < 0)
        _width = 0;
    else
        _width = width;
}

@end
