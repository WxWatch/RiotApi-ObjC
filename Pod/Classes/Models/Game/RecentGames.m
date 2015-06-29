//
//  RecentGames.m
//  RiotAPI
//
//  Created by James Glenn on 5/15/15.
//  Copyright (c) 2015 James Glenn. All rights reserved.
//

#import "RecentGames.h"

@implementation RecentGames

- (void)setGames:(NSArray *)games {
    _games = [games arrayOfObjectsWithClass:[RecentGame class]];
}

- (NSString *)description {
    return [NSString stringWithFormat:@"<RecentGames: %lu Games>", (unsigned long)self.games.count];
}

@end
