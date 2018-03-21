//
//  Rectangle.h
//  05.classInheritance
//
//  Created by 송영현 on 2018. 3. 21..
//  Copyright © 2018년 draconian. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Rectangle : NSObject {
    int width;
    int height;
}

+ (id)rectangle;
+ (id)rectangle:(int)width height:(int)height;

- (id)initWithWidth:(int)newWidth height:(int)newHeight;

- (void)setWidth:(int)newWidth;
- (int)width;

- (void)setHeight:(int)newHeight;
- (int)height;

- (int)size;

- (void)setWidth:(int)newWidth height:(int)newHeight;

- (BOOL)isSquare;


@end
