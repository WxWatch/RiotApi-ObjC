//
//  MasteryPage.m
//  RiotAPI
//
//  Created by James Glenn on 5/13/15.
//  Copyright (c) 2015 James Glenn. All rights reserved.
//

#import "MasteryPage.h"

@implementation MasteryPage

- (void)setMasteries:(NSArray *)masteries {
    _masteries = [masteries arrayOfObjectsWithClass:[SummonerMastery class]];
}

@end
