//
//  CurrentGameParticipant.h
//  RiotAPI
//
//  Created by James Glenn on 5/12/15.
//  Copyright (c) 2015 James Glenn. All rights reserved.
//

#import "BaseObject.h"
#import "CurrentGameMastery.h"
#import "CurrentGameRune.h"

@interface CurrentGameParticipant : BaseObject

@property (nonatomic, assign) BOOL bot;
@property (nonatomic, assign) long championId;
@property (nonatomic, strong) NSArray *masteries;
@property (nonatomic, assign) long profileIconId;
@property (nonatomic, strong) NSArray *runes;
@property (nonatomic, assign) long spell1Id;
@property (nonatomic, assign) long spell2Id;
@property (nonatomic, assign) long summonerId;
@property (nonatomic, strong) NSString *summonerName;
@property (nonatomic, assign) long teamId;

@end
