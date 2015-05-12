//
//  ParticipantIdentity.h
//  RiotAPI
//
//  Created by James Glenn on 5/12/15.
//  Copyright (c) 2015 James Glenn. All rights reserved.
//

#import "BaseObject.h"

@class Player;

@interface ParticipantIdentity : BaseObject

@property (nonatomic, assign) NSInteger participantId;
@property (nonatomic, strong) Player *player;

@end
