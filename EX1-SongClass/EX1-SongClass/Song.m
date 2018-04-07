//
//  Song.m
//  EX1-SongClass
//
//  Created by 송영현 on 2018. 4. 7..
//  Copyright © 2018년 draconian. All rights reserved.
//

#import "Song.h"

@implementation Song

- (id)initWithValues:(NSString *)title artist:(NSString *)artist duration:(int)duration {
    self = [super init];
    if (self) {
        _title = title;
        _artist = artist;
        _duration = duration;
    }
    return self;
}

+ (id)song:(NSString *)title artist:(NSString *)artist duration:(int)duration {
    Song *obj = [[Song alloc] initWithValues:title artist:artist duration:duration];
    return obj;
}

- (void)play {
    NSLog(@"Play\nTitle: %@\nArtist: %@\nDuration: %d\n\n", _title, _artist, _duration);
}

- (BOOL)isEqualToSongTitle:(NSString *)title {
    return [_title isEqualToString:title];
}

@end
