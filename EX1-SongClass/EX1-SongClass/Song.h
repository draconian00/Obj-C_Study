//
//  Song.h
//  EX1-SongClass
//
//  Created by 송영현 on 2018. 4. 7..
//  Copyright © 2018년 draconian. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Song : NSObject

@property (strong, nonatomic) NSString *title;
@property (strong, nonatomic) NSString *artist;
@property int duration;

- (id)initWithValues:(NSString *)title artist:(NSString *)artist duration:(int)duration;
+ (id)song:(NSString *)title artist:(NSString *)artist duration:(int)duration;

- (void)play;

- (BOOL)isEqualToSongTitle:(NSString *)title;

@end
