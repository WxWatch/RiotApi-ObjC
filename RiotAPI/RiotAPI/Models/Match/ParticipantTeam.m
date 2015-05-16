//
//  ParticipantTeam.m
//  RiotAPI
//
//  Created by James Glenn on 5/12/15.
//  Copyright (c) 2015 James Glenn. All rights reserved.
//

#import "ParticipantTeam.h"
#import "NSArray+Utilities.h"

@implementation ParticipantTeam

- (void)setBans:(NSArray *)bans {
    _bans = [bans arrayOfObjectsWithClass:[BannedChampion class]];
}

@end
