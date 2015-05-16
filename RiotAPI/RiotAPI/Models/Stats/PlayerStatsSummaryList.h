//
//  PlayerStatsSummaryList.h
//  RiotAPI
//
//  Created by James Glenn on 5/12/15.
//  Copyright (c) 2015 James Glenn. All rights reserved.
//

#import "BaseObject.h"
#import "PlayerStatsSummary.h"

@interface PlayerStatsSummaryList : BaseObject

@property (nonatomic, strong) NSArray *playerStatSummaries;
@property (nonatomic, assign) long summonerId;

@end
