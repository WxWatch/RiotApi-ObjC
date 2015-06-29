//
//  MetaChampionList.m
//  RiotAPI
//
//  Created by James Glenn on 5/12/15.
//  Copyright (c) 2015 James Glenn. All rights reserved.
//

#import "MetaChampionList.h"

@implementation MetaChampionList

- (void)setChampions:(NSArray *)champions {
    _champions = [champions arrayOfObjectsWithClass:[MetaChampion class]];
}

- (NSString *)description {
    return [NSString stringWithFormat:@"<MetaChampionList: %lu Champions>", (unsigned long)self.champions.count];
}

@end
