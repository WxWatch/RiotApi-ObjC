//
//  StaticSummonerSpellList.m
//  RiotAPI
//
//  Created by James Glenn on 5/16/15.
//  Copyright (c) 2015 James Glenn. All rights reserved.
//

#import "StaticSummonerSpellList.h"

@implementation StaticSummonerSpellList

- (void)setData:(NSDictionary *)data {
    _data = [data dictionaryOfObjectsWithClass:[StaticSummonerSpell class]];
}

@end
