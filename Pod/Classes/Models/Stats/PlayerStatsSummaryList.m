//
//  PlayerStatsSummaryList.m
//  RiotAPI
//
//  Created by James Glenn on 5/12/15.
//  Copyright (c) 2015 James Glenn. All rights reserved.
//

#import "PlayerStatsSummaryList.h"

@implementation PlayerStatsSummaryList

- (void)setPlayerStatSummaries:(NSArray *)playerStatSummaries {
    _playerStatSummaries = [playerStatSummaries arrayOfObjectsWithClass:[PlayerStatsSummary class]];
}

@end
