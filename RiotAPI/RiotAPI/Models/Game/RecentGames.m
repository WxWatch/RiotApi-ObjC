//
//  RecentGames.m
//  RiotAPI
//
//  Created by James Glenn on 5/15/15.
//  Copyright (c) 2015 James Glenn. All rights reserved.
//

#import "RecentGames.h"
#import "NSArray+Utilities.h"

@implementation RecentGames

- (void)setGames:(NSArray *)games {
    _games = [games arrayOfObjectsWithClass:[RecentGame class]];
}

@end