//
//  MatchSummary.m
//  RiotAPI
//
//  Created by James Glenn on 5/12/15.
//  Copyright (c) 2015 James Glenn. All rights reserved.
//

#import "MatchSummary.h"

@implementation MatchSummary

- (void)setParticipantIdentities:(NSArray *)participantIdentities {
    _participantIdentities = [participantIdentities arrayOfObjectsWithClass:[ParticipantIdentity class]];
}

- (void)setParticipants:(NSArray *)participants {
    _participants = [participants arrayOfObjectsWithClass:[Participant class]];
}

@end
