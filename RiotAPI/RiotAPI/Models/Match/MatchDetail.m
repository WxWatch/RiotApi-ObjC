//
//  MatchDetail.m
//  RiotAPI
//
//  Created by James Glenn on 5/12/15.
//  Copyright (c) 2015 James Glenn. All rights reserved.
//

#import "MatchDetail.h"
#import "NSDate+RiotAPI.h"
#import "NSArray+RiotAPI.h"

@implementation MatchDetail

- (void)setParticipantIdentities:(NSArray *)participantIdentities {
    _participantIdentities = [participantIdentities arrayOfObjectsWithClass:[ParticipantIdentity class]];
}

- (void)setParticipants:(NSArray *)participants {
    _participants = [participants arrayOfObjectsWithClass:[Participant class]];
}

- (void)setTeams:(NSArray *)teams {
    _teams = [teams arrayOfObjectsWithClass:[ParticipantTeam class]];
}

- (NSDate *)matchCreationAsDate {
    return [NSDate dateWithMillisecondsSince1970:self.matchCreation];
}

@end
