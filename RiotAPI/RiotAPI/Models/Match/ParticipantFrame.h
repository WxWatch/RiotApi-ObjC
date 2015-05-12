//
//  ParticipantFrame.h
//  RiotAPI
//
//  Created by James Glenn on 5/12/15.
//  Copyright (c) 2015 James Glenn. All rights reserved.
//

#import "BaseObject.h"

@class Position;

@interface ParticipantFrame : BaseObject

@property (nonatomic, assign) NSInteger currentGold;
@property (nonatomic, assign) NSInteger dominionScore;
@property (nonatomic, assign) NSInteger jungleMinionsKilled;
@property (nonatomic, assign) NSInteger level;
@property (nonatomic, assign) NSInteger minionsKilled;
@property (nonatomic, assign) NSInteger participantId;
@property (nonatomic, strong) Position *position;
@property (nonatomic, assign) NSInteger teamScore;
@property (nonatomic, assign) NSInteger totalGold;
@property (nonatomic, assign) NSInteger xp;

@end
