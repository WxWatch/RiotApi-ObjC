//
//  MatchSummary.h
//  RiotAPI
//
//  Created by James Glenn on 5/12/15.
//  Copyright (c) 2015 James Glenn. All rights reserved.
//

#import "BaseObject.h"
#import "ParticipantIdentity.h"
#import "Participant.h"

@interface MatchSummary : BaseObject

@property (nonatomic, assign) NSInteger mapId;
@property (nonatomic, assign) long matchCreation;
@property (nonatomic, assign) long matchDuration;
@property (nonatomic, assign) long matchId;
@property (nonatomic, strong) NSString *matchMode;
@property (nonatomic, strong) NSString *matchType;
@property (nonatomic, strong) NSString *matchVersion;
@property (nonatomic, strong) NSArray *participantIdentities;
@property (nonatomic, strong) NSArray *participants;
@property (nonatomic, strong) NSString *platformId;
@property (nonatomic, strong) NSString *queueType;
@property (nonatomic, strong) NSString *region;
@property (nonatomic, strong) NSString *season;

@end
