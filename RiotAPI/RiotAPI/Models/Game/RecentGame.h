//
//  RecentGame.h
//  RiotAPI
//
//  Created by James Glenn on 5/15/15.
//  Copyright (c) 2015 James Glenn. All rights reserved.
//

#import "BaseObject.h"
#import "RecentGamePlayer.h"
#import "RawStats.h"

@interface RecentGame : BaseObject

@property (nonatomic, assign) NSInteger championId;
@property (nonatomic, assign) long createDate;
@property (nonatomic, strong) NSArray *fellowPlayers;
@property (nonatomic, assign) long gameId;
@property (nonatomic, strong) NSString *gameMode;
@property (nonatomic, strong) NSString *gameType;
@property (nonatomic, assign) BOOL invalid;
@property (nonatomic, assign) NSInteger ipEarned;
@property (nonatomic, assign) NSInteger level;
@property (nonatomic, assign) NSInteger mapId;
@property (nonatomic, assign) NSInteger spell1;
@property (nonatomic, assign) NSInteger spell2;
@property (nonatomic, strong) RawStats *stats;
@property (nonatomic, strong) NSString *subType;
@property (nonatomic, assign) NSInteger teamId;

@end
