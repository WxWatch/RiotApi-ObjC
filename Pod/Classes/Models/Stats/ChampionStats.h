//
//  ChampionStats.h
//  RiotAPI
//
//  Created by James Glenn on 5/12/15.
//  Copyright (c) 2015 James Glenn. All rights reserved.
//

#import "BaseObject.h"

@class AggregatedStats;

@interface ChampionStats : BaseObject

@property (nonatomic, assign) NSInteger id;
@property (nonatomic, strong) AggregatedStats *stats;

@end
