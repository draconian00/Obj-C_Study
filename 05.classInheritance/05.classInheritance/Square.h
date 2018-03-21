//
//  Square.h
//  05.classInheritance
//
//  Created by 송영현 on 2018. 3. 21..
//  Copyright © 2018년 draconian. All rights reserved.
//

#import "Rectangle.h"

@interface Square : Rectangle

+ (id)squareWithWidth:(int)width;
- (id)initWithWidth:(int)newWidth;

@end
