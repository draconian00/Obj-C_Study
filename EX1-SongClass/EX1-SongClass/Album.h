//
//  Album.h
//  EX1-SongClass
//
//  Created by 송영현 on 2018. 4. 7..
//  Copyright © 2018년 draconian. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Song.h"

@interface Album : NSObject

@property (strong, nonatomic) NSString *title;
@property (strong, nonatomic) NSMutableArray *songs;

- (id)initWithTitle:(NSString *)title;

- (void)addSong:(Song *)song;
- (void)removeSong:(NSString *)title;
- (Song *)searchSong:(NSString *)title;

- (void)play;

@end
