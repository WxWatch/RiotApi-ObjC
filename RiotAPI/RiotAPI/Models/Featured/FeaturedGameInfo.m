//
//  FeaturedGameInfo.m
//  RiotAPI
//
//  Created by James Glenn on 5/15/15.
//  Copyright (c) 2015 James Glenn. All rights reserved.
//

#import "FeaturedGameInfo.h"
#import "NSArray+Utilities.h"

@implementation FeaturedGameInfo

- (void)setBannedChampions:(NSArray *)bannedChampions {
    _bannedChampions = [bannedChampions arrayOfObjectsWithClass:[CurrentGameBannedChampion class]];
}

- (void)setParticipants:(NSArray *)participants {
    _participants = [participants arrayOfObjectsWithClass:[CurrentGameParticipant class]];
}

@end
