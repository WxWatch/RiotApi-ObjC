//
//  CurrentGameInfo.m
//  RiotAPI
//
//  Created by James Glenn on 5/12/15.
//  Copyright (c) 2015 James Glenn. All rights reserved.
//

#import "CurrentGameInfo.h"

@implementation CurrentGameInfo

- (void)setBannedChampions:(NSArray *)bannedChampions {
    _bannedChampions = [bannedChampions arrayOfObjectsWithClass:[CurrentGameBannedChampion class]];
}

- (void)setParticipants:(NSArray *)participants {
    _participants = [participants arrayOfObjectsWithClass:[CurrentGameParticipant class]];
}

@end
