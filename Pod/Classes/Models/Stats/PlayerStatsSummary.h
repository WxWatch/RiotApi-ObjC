//
//  PlayerStatsSummary.h
//  RiotAPI
//
//  Created by James Glenn on 5/12/15.
//  Copyright (c) 2015 James Glenn. All rights reserved.
//

#import "BaseObject.h"

@class AggregatedStats;

@interface PlayerStatsSummary : BaseObject

@property (nonatomic, strong) AggregatedStats *aggregatedStats;
@property (nonatomic, assign) NSInteger losses;
@property (nonatomic, assign) long modifyDate;
@property (nonatomic, strong) NSString *playerStatSummaryType;
@property (nonatomic, assign) NSInteger wins;

@end
