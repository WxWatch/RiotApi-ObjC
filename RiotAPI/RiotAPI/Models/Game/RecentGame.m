//
//  RecentGame.m
//  RiotAPI
//
//  Created by James Glenn on 5/15/15.
//  Copyright (c) 2015 James Glenn. All rights reserved.
//

#import "RecentGame.h"
#import "NSArray+Utilities.h"

@implementation RecentGame

- (void)setFellowPlayers:(NSArray *)fellowPlayers {
    _fellowPlayers = [fellowPlayers arrayOfObjectsWithClass:[RecentGamePlayer class]];
}

@end
