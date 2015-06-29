//
//  LeagueEntry.h
//  RiotAPI
//
//  Created by James Glenn on 5/11/15.
//  Copyright (c) 2015 James Glenn. All rights reserved.
//

#import "BaseObject.h"

@class MiniSeries;

@interface LeagueEntry : BaseObject

@property (nonatomic, strong) NSString *division;
@property (nonatomic, assign) BOOL isFreshBlood;
@property (nonatomic, assign) BOOL isHotStreak;
@property (nonatomic, assign) BOOL isInactive;
@property (nonatomic, assign) BOOL isVeteran;
@property (nonatomic, assign) NSInteger leaguePoints;
@property (nonatomic, assign) NSInteger losses;
@property (nonatomic, strong) MiniSeries *miniSeries;
@property (nonatomic, strong) NSString *playerOrTeamId;
@property (nonatomic, strong) NSString *playerOrTeamName;
@property (nonatomic, assign) NSInteger wins;

@end
