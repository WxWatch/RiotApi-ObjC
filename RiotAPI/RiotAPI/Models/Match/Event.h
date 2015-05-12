//
//  Event.h
//  RiotAPI
//
//  Created by James Glenn on 5/12/15.
//  Copyright (c) 2015 James Glenn. All rights reserved.
//

#import "BaseObject.h"

@class Position;

@interface Event : BaseObject

@property (nonatomic, strong) NSString *ascendedType;
@property (nonatomic, strong) NSArray *assistingParticipantIds;
@property (nonatomic, strong) NSString *buildingType;
@property (nonatomic, assign) NSInteger creatorId;
@property (nonatomic, strong) NSString *eventType;
@property (nonatomic, assign) NSInteger itemAfter;
@property (nonatomic, assign) NSInteger itemBefore;
@property (nonatomic, assign) NSInteger itemId;
@property (nonatomic, assign) NSInteger killerId;
@property (nonatomic, strong) NSString *laneType;
@property (nonatomic, strong) NSString *levelUpType;
@property (nonatomic, strong) NSString *monsterType;
@property (nonatomic, assign) NSInteger participantId;
@property (nonatomic, strong) NSString *pointCaptured;
@property (nonatomic, strong) Position *position;
@property (nonatomic, assign) NSInteger skillSlot;
@property (nonatomic, assign) NSInteger teamId;
@property (nonatomic, assign) long timestamp;
@property (nonatomic, strong) NSString *towerType;
@property (nonatomic, assign) NSInteger victimId;
@property (nonatomic, strong) NSString *wardType;

@end
