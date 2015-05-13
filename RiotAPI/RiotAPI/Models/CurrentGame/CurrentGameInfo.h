//
//  CurrentGameInfo.h
//  RiotAPI
//
//  Created by James Glenn on 5/12/15.
//  Copyright (c) 2015 James Glenn. All rights reserved.
//

#import "BaseObject.h"

@class CurrentGameBannedChampion;
@class CurrentGameParticipant;
@class Observer;

@interface CurrentGameInfo : BaseObject

@property (nonatomic, strong) NSArray *bannedChampions;
@property (nonatomic, assign) long gameId;
@property (nonatomic, assign) long gameLength;
@property (nonatomic, strong) NSString *gameMode;
@property (nonatomic, assign) long gameQueueConfigId;
@property (nonatomic, assign) long gameStartTime;
@property (nonatomic, strong) NSString *gameType;
@property (nonatomic, assign) long mapId;
@property (nonatomic, strong) Observer *observers;
@property (nonatomic, strong) NSArray *participants;
@property (nonatomic, strong) NSString *platformId;

@end
