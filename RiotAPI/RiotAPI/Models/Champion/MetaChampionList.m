//
//  MetaChampionList.m
//  RiotAPI
//
//  Created by James Glenn on 5/12/15.
//  Copyright (c) 2015 James Glenn. All rights reserved.
//

#import "MetaChampionList.h"
#import "NSArray+Utilities.h"

@implementation MetaChampionList

- (void)setChampions:(NSArray *)champions {
    _champions = [champions arrayOfObjectsWithClass:[MetaChampion class]];
}

@end
