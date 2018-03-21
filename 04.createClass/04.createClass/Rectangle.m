//
//  Rectangle.m
//  04.createClass
//
//  Created by 송영현 on 2018. 3. 19..
//  Copyright © 2018년 draconian. All rights reserved.
//

/*
 클래스 구현 파일 - 클래스의 행위 동작 코드 작성
 형식
 
 #import "ClassName.h"
 
 @implementation ClassName
 @end
 */

#import "Rectangle.h"

@implementation Rectangle

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

- (int)size {
    return width * height;  
}

- (void)setWidth:(int)newWidth height:(int)newHeight {
    [self setWidth:newWidth];
    [self setHeight:newHeight];
}

- (BOOL)isSquare {
    return width == height;
}

@end
