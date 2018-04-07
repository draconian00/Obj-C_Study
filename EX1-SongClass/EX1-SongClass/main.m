//
//  main.m
//  EX1-SongClass
//
//  Created by 송영현 on 2018. 4. 7..
//  Copyright © 2018년 draconian. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Song.h"
#import "Album.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        
        Song *s1 = [Song song:@"song1" artist:@"artist1" duration:360];
        Song *s2 = [Song song:@"song2" artist:@"artist2" duration:400];
        Song *s3 = [Song song:@"song3" artist:@"artist3" duration:320];
        
        [s1 play];
        [s2 play];
        [s3 play];
        
        s2.artist = @"real artist1";
        
        [s1 play];
        
        Album *a = [[Album alloc] initWithTitle:@"New Album"];
        [a addSong:s1];
        [a addSong:s2];
        [a addSong:s3];
        
        [a play];
        
        [a removeSong:@"song1"];
        [a removeSong:@"??"];
        
        [a play];
        
    }
    return 0;
}
