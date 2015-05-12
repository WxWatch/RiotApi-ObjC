//
//  ParticipantTeam.h
//  RiotAPI
//
//  Created by James Glenn on 5/12/15.
//  Copyright (c) 2015 James Glenn. All rights reserved.
//

#import "BaseObject.h"

@class BannedChampion;

@interface ParticipantTeam : BaseObject

@property (nonatomic, strong) NSArray *bans;
@property (nonatomic, assign) NSInteger baronKills;
@property (nonatomic, assign) long dominionVictoryScore;
@property (nonatomic, assign) NSInteger dragonKills;
@property (nonatomic, assign) BOOL firstBaron;
@property (nonatomic, assign) BOOL firstBlood;
@property (nonatomic, assign) BOOL firstDragon;
@property (nonatomic, assign) BOOL firstInhibitor;
@property (nonatomic, assign) BOOL firstTower;
@property (nonatomic, assign) NSInteger inhibitorKills;
@property (nonatomic, assign) NSInteger teamId;
@property (nonatomic, assign) NSInteger towerKills;
@property (nonatomic, assign) NSInteger vilemawKills;
@property (nonatomic, assign) BOOL winner;

@end
