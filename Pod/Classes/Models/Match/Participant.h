//
//  Participant.h
//  RiotAPI
//
//  Created by James Glenn on 5/12/15.
//  Copyright (c) 2015 James Glenn. All rights reserved.
//

#import "BaseObject.h"
#import "ParticipantMastery.h"
#import "ParticipantRune.h"
#import "ParticipantStats.h"
#import "ParticipantTimeline.h"

@interface Participant : BaseObject

@property (nonatomic, assign) NSInteger championId;
@property (nonatomic, strong) NSString *highestAchievedSeasonTier;
@property (nonatomic, strong) NSArray *masteries;
@property (nonatomic, assign) NSInteger participantId;
@property (nonatomic, strong) NSArray *runes;
@property (nonatomic, assign) NSInteger spell1Id;
@property (nonatomic, assign) NSInteger spell2Id;
@property (nonatomic, strong) ParticipantStats *stats;
@property (nonatomic, assign) NSInteger teamId;
@property (nonatomic, strong) ParticipantTimeline *timeline;

@end
