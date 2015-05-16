//
//  StaticChampionList.m
//  RiotAPI
//
//  Created by James Glenn on 5/13/15.
//  Copyright (c) 2015 James Glenn. All rights reserved.
//

#import "StaticChampionList.h"
#import "NSDictionary+Utilities.h"

@implementation StaticChampionList

- (void)setData:(NSDictionary *)data {
    _data = [data dictionaryOfObjectsWithClass:[StaticChampion class]];
}

@end
