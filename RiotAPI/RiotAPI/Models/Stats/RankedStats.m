//
//  RankedStats.m
//  RiotAPI
//
//  Created by James Glenn on 5/12/15.
//  Copyright (c) 2015 James Glenn. All rights reserved.
//

#import "RankedStats.h"
#import "NSArray+Utilities.h"

@implementation RankedStats

- (void)setChampions:(NSArray *)champions {
    _champions = [champions arrayOfObjectsWithClass:[ChampionStats class]];
}

@end
