//
//  FeaturedGames.m
//  RiotAPI
//
//  Created by James Glenn on 5/15/15.
//  Copyright (c) 2015 James Glenn. All rights reserved.
//

#import "FeaturedGames.h"
#import "NSArray+Utilities.h"

@implementation FeaturedGames

- (void)setGameList:(NSArray *)gameList {
    _gameList = [gameList arrayOfObjectsWithClass:[FeaturedGameInfo class]];
}

- (NSString *)description {
    return [NSString stringWithFormat:@"<FeaturedGames: %lu Games>", (unsigned long)self.gameList.count];
}

@end
