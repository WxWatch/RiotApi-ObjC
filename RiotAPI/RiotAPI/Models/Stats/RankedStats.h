//
//  RankedStats.h
//  RiotAPI
//
//  Created by James Glenn on 5/12/15.
//  Copyright (c) 2015 James Glenn. All rights reserved.
//

#import "BaseObject.h"

@class ChampionStats;

@interface RankedStats : BaseObject

@property (nonatomic, strong) NSArray *champions;
@property (nonatomic, assign) long modifyDate;
@property (nonatomic, assign) long summonerId;

@end
