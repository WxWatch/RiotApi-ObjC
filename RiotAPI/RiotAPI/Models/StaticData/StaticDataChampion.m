//
//  StaticDataChampion.m
//  RiotAPI
//
//  Created by James Glenn on 4/30/15.
//  Copyright (c) 2015 James Glenn. All rights reserved.
//

#import "StaticDataChampion.h"
#import "NSDictionary+JGUtil.h"
#import "NSData+JGUtil.h"
#import "NSArray+JGUtil.h"

@interface ChampionList ()
@property NSData *pData;
@property NSData *pKeys;
@end

@implementation ChampionList

+ (NSDictionary *)defaultPropertyValues {
    return @{ @"pData": [NSData data], @"format": @"", @"pKeys": [NSData data], @"type": @"", @"version": @"" };
}

+ (NSArray *)ignoredProperties {
    return @[@"data", @"keys"];
}

- (void)setData:(NSDictionary *)data {
    _pData = [data convertToData];
}

- (NSDictionary *)data {
    NSDictionary *myDictionary = [self.pData convertToDictionary];
    return myDictionary;
}

- (void)setKeys:(NSDictionary *)keys {
    _pKeys = [keys convertToData];
}

- (NSDictionary *)keys {
    return [self.pKeys convertToDictionary];
}

@end


@interface Champion ()
@property NSData *pAllytips;
@property NSData *pEnemytips;
@property NSData *pTags;
@end

@implementation Champion

+ (NSDictionary *)defaultPropertyValues {
    return @{ @"pAllytips": [NSData data], @"blurb": @"", @"pEnemytips": [NSData data], @"id": @0, @"key": @"", @"lore": @"", @"name": @"", @"partype": @"", @"pTags": [NSData data], @"title": @"" };
}

+ (NSArray *)ignoredProperties {
    return @[@"allytips", @"enemytips", @"tags"];
}

- (void)setAllytips:(NSArray *)allytips {
    self.pAllytips = [allytips convertToData];
}

- (NSArray *)allytips {
    NSArray *tips = [self.pAllytips convertToArray];
    return tips;
}

- (void)setEnemytips:(NSArray *)enemytips {
    _pEnemytips = [enemytips convertToData];
}

- (NSArray *)enemytips {
    NSArray *tips = [self.pEnemytips convertToArray];
    return tips;
}

- (void)setTags:(NSArray *)tags {
    _pTags = [tags convertToData];
}

- (NSArray *)tags {
    NSArray *tags = [self.pTags convertToArray];
    return tags;
}

@end

@implementation Info
@end

@implementation Passive
@end

@implementation Recommended
@end

@implementation Skin
@end

@implementation Stats
@end

@implementation LevelTip
@end

@implementation SpellVars
@end

@implementation Block
@end

@implementation BlockItem
@end

@implementation ChampionSpell
@end
