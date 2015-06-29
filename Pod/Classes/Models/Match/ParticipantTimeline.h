//
//  ParticipantTimeline.h
//  RiotAPI
//
//  Created by James Glenn on 5/12/15.
//  Copyright (c) 2015 James Glenn. All rights reserved.
//

#import "BaseObject.h"

@class ParticipantTimelineData;

@interface ParticipantTimeline : BaseObject

@property (nonatomic, strong) ParticipantTimelineData *ancientGolemAssistsPerMinCounts;
@property (nonatomic, strong) ParticipantTimelineData *ancientGolemKillsPerMinCounts;
@property (nonatomic, strong) ParticipantTimelineData *assistedLaneDeathsPerMinDeltas;
@property (nonatomic, strong) ParticipantTimelineData *assistedLaneKillsPerMinDeltas;
@property (nonatomic, strong) ParticipantTimelineData *baronAssistsPerMinCounts;
@property (nonatomic, strong) ParticipantTimelineData *baronKillsPerMinCounts;
@property (nonatomic, strong) ParticipantTimelineData *creepsPerMinDeltas;
@property (nonatomic, strong) ParticipantTimelineData *csDiffPerMinDeltas;
@property (nonatomic, strong) ParticipantTimelineData *damageTakenDiffPerMinDeltas;
@property (nonatomic, strong) ParticipantTimelineData *damageTakenPerMinDeltas;
@property (nonatomic, strong) ParticipantTimelineData *dragonAssistsPerMinCounts;
@property (nonatomic, strong) ParticipantTimelineData *dragonKillsPerMinCounts;
@property (nonatomic, strong) ParticipantTimelineData *elderLizardAssistsPerMinCounts;
@property (nonatomic, strong) ParticipantTimelineData *elderLizardKillsPerMinCounts;
@property (nonatomic, strong) ParticipantTimelineData *goldPerMinDeltas;
@property (nonatomic, strong) ParticipantTimelineData *inhibitorAssistsPerMinCounts;
@property (nonatomic, strong) ParticipantTimelineData *inhibitorKillsPerMinCounts;
@property (nonatomic, strong) NSString *lane;
@property (nonatomic, strong) NSString *role;
@property (nonatomic, strong) ParticipantTimelineData *towerAssistsPerMinCounts;
@property (nonatomic, strong) ParticipantTimelineData *towerKillsPerMinCounts;
@property (nonatomic, strong) ParticipantTimelineData *towerKillsPerMinDeltas;
@property (nonatomic, strong) ParticipantTimelineData *vilemawAssistsPerMinCounts;
@property (nonatomic, strong) ParticipantTimelineData *vilemawKillsPerMinCounts;
@property (nonatomic, strong) ParticipantTimelineData *wardsPerMinDeltas;
@property (nonatomic, strong) ParticipantTimelineData *xpDiffPerMinDeltas;
@property (nonatomic, strong) ParticipantTimelineData *xpPerMinDeltas;

@end
