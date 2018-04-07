//
//  Album.m
//  EX1-SongClass
//
//  Created by 송영현 on 2018. 4. 7..
//  Copyright © 2018년 draconian. All rights reserved.
//

#import "Album.h"

@implementation Album

- (id)init {
    self = [super init];
    if ( self ) {
        _songs = [[NSMutableArray alloc] init];
    }
    return self;
}

- (id)initWithTitle:(NSString *)title {
    self = [super init];
    if ( self ) {
        _songs = [[NSMutableArray alloc] init];
        _title = title;
    }
    return self;
}

- (void)addSong:(Song *)song {
    [_songs addObject:song];
    NSLog(@"add song to the Album: %@", song.title);
}

- (Song *)searchSong:(NSString *)title {
    for (Song *song in _songs) {
        if ( [song isEqualToSongTitle:title] )
            return song;
    }
    return nil;
}

- (void)removeSong:(NSString *)title {
    Song *song = [self searchSong:title];
    
    if (song != nil) {
        [_songs removeObject:song];
        NSLog(@"Success to remove song: %@", title);
        return;
    }
    NSLog(@"fail to find song: %@", title);
}

- (void)play {
    for (Song *song in _songs) {
        [song play];
    }
}

@end
