//
//  StaticDataService.m
//  RiotAPI
//
//  Created by James Glenn on 6/11/15.
//  Copyright (c) 2015 James Glenn. All rights reserved.
//

#import "StaticDataService.h"

@implementation StaticDataService

- (void)getStaticChampionsWithRegion:(RGRegion*)region success:(void (^)(StaticChampionList *))success failure:(void (^)(NSError *))failure {
    [self fireServiceWithRegion:region endpoint:@"champion" params:nil success:^(id response) {
        StaticChampionList *list = [StaticChampionList objectWithDictionary:response];
        success(list);
    }  failure:failure];
}

- (void)getStaticChampionsWithLocale:(NSString*)locale version:(NSString*)version dataById:(BOOL)dataById champData:(NSString*)champData region:(RGRegion *)region success:(void (^)(StaticChampionList *))success failure:(void (^)(NSError *))failure {
    NSMutableDictionary *params = [NSMutableDictionary new];
    if (locale) [params setObject:locale forKey:@"locale"];
    if (version) [params setObject:version forKey:@"version"];
    if (dataById) [params setObject:[self sanitizeBoolean:dataById] forKey:@"dataById"];
    if (champData) [params setObject:champData forKey:@"champData"];
    
    [self fireServiceWithRegion:region endpoint:@"champion" params:params success:^(id response) {
        StaticChampionList *list = [StaticChampionList objectWithDictionary:response];
        success(list);
    } failure:failure];
}

- (void)getStaticChampionByID:(NSInteger)championID region:(RGRegion*)region success:(void (^)(StaticChampion *))success failure:(void (^)(NSError *))failure {
    NSString *endpoint = [NSString stringWithFormat:@"champion/%ld", (long)championID];
    [self fireServiceWithRegion:region endpoint:endpoint params:nil success:^(id response) {
        StaticChampion *champ = [StaticChampion objectWithDictionary:response];
        success(champ);
    }  failure:failure];
}

- (void)getStaticChampionByID:(NSInteger)championID withLocale:(NSString*)locale version:(NSString*)version dataById:(BOOL)dataById champData:(NSString*)champData region:(RGRegion *)region success:(void (^)(StaticChampion *))success failure:(void (^)(NSError *))failure {
    NSString *endpoint = [NSString stringWithFormat:@"champion/%ld", (long)championID];
    NSMutableDictionary *params = [NSMutableDictionary new];
    if (locale) [params setObject:locale forKey:@"locale"];
    if (version) [params setObject:version forKey:@"version"];
    if (dataById) [params setObject:[self sanitizeBoolean:dataById] forKey:@"dataById"];
    if (champData) [params setObject:champData forKey:@"champData"];
    
    [self fireServiceWithRegion:region endpoint:endpoint params:params success:^(id response) {
        StaticChampion *champ = [StaticChampion objectWithDictionary:response];
        success(champ);
    } failure:failure];
}

- (void)getStaticItemsregion:(RGRegion*)region success:(void (^)(StaticItemList *))success failure:(void (^)(NSError *))failure {
    [self fireServiceWithRegion:region endpoint:@"item" params:nil success:^(id response) {
        StaticItemList *list = [StaticItemList objectWithDictionary:response];
        success(list);
    }  failure:failure];
}

- (void)getStaticItemsWithLocale:(NSString*)locale version:(NSString*)version itemListData:(NSString*)itemListData region:(RGRegion *)region success:(void (^)(StaticItemList *))success failure:(void (^)(NSError *))failure {
    NSMutableDictionary *params = [NSMutableDictionary new];
    if (locale) [params setObject:locale forKey:@"locale"];
    if (version) [params setObject:version forKey:@"version"];
    if (itemListData) [params setObject:itemListData forKey:@"itemListData"];
    
    [self fireServiceWithRegion:region endpoint:@"item" params:params success:^(id response) {
        StaticItemList *list = [StaticItemList objectWithDictionary:response];
        success(list);
    } failure:failure];
}

- (void)getStaticItemByID:(NSInteger)itemID region:(RGRegion*)region success:(void (^)(StaticItem *))success failure:(void (^)(NSError *))failure
{
    NSString *endpoint = [NSString stringWithFormat:@"item/%ld", (long)itemID];
    [self fireServiceWithRegion:region endpoint:endpoint params:nil success:^(id response) {
        StaticItem *item = [StaticItem objectWithDictionary:response];
        success(item);
    }  failure:failure];
}

- (void)getStaticItemByID:(NSInteger)itemID withLocale:(NSString*)locale version:(NSString*)version itemListData:(NSString*)itemListData region:(RGRegion *)region success:(void (^)(StaticItem *))success failure:(void (^)(NSError *))failure
{
    NSString *endpoint = [NSString stringWithFormat:@"item/%ld", (long)itemID];
    NSMutableDictionary *params = [NSMutableDictionary new];
    if (locale) [params setObject:locale forKey:@"locale"];
    if (version) [params setObject:version forKey:@"version"];
    if (itemListData) [params setObject:itemListData forKey:@"itemListData"];
    
    [self fireServiceWithRegion:region endpoint:endpoint params:nil success:^(id response) {
        StaticItem *item = [StaticItem objectWithDictionary:response];
        success(item);
    }  failure:failure];
}

- (void)getLanguageStringsregion:(RGRegion*)region success:(void (^)(StaticLanguageStrings *))success failure:(void (^)(NSError *))failure
{
    [self fireServiceWithRegion:region endpoint:@"language-strings" params:nil success:^(id response) {
        StaticLanguageStrings *strings = [StaticLanguageStrings objectWithDictionary:response];
        success(strings);
    }  failure:failure];
}

- (void)getLanguageStringsWithLocale:(NSString*)locale version:(NSString*)version region:(RGRegion *)region success:(void (^)(StaticLanguageStrings *))success failure:(void (^)(NSError *))failure
{
    NSMutableDictionary *params = [NSMutableDictionary new];
    if (locale) [params setObject:locale forKey:@"locale"];
    if (version) [params setObject:version forKey:@"version"];
    
    [self fireServiceWithRegion:region endpoint:@"language-strings" params:nil success:^(id response) {
        StaticLanguageStrings *strings = [StaticLanguageStrings objectWithDictionary:response];
        success(strings);
    }  failure:failure];
}

- (void)getLanguagesregion:(RGRegion*)region success:(void (^)(NSArray *))success failure:(void (^)(NSError *))failure
{
    [self fireServiceWithRegion:region endpoint:@"languages" params:nil success:success failure:failure];
}

- (void)getMapregion:(RGRegion*)region success:(void (^)(StaticMapData *))success failure:(void (^)(NSError *))failure
{
	[self fireServiceWithRegion:region endpoint:@"map" params:nil success:^(id response) {
        StaticMapData *map = [StaticMapData objectWithDictionary:response];
        success(map);
    } failure:failure];
}

- (void)getMapWithLocale:(NSString*)locale version:(NSString*)version region:(RGRegion *)region success:(void (^)(StaticMapData *))success failure:(void (^)(NSError *))failure
{
    NSMutableDictionary *params = [NSMutableDictionary new];
    if (locale) [params setObject:locale forKey:@"locale"];
    if (version) [params setObject:version forKey:@"version"];
    
    [self fireServiceWithRegion:region endpoint:@"map" params:nil success:^(id response) {
        StaticMapData *map = [StaticMapData objectWithDictionary:response];
        success(map);
    } failure:failure];
}

- (void)getStaticMasteriesregion:(RGRegion*)region success:(void (^)(StaticMasteryList *))success failure:(void (^)(NSError *))failure
{
	[self fireServiceWithRegion:region endpoint:@"mastery" params:nil success:^(id response) {
        StaticMasteryList *list = [StaticMasteryList objectWithDictionary:response];
        success(list);
    } failure:failure];
}

- (void)getStaticMasteriesWithLocale:(NSString*)locale version:(NSString*)version masteryListData:(NSString*)masteryListData region:(RGRegion *)region success:(void (^)(StaticMasteryList *))success failure:(void (^)(NSError *))failure
{
    NSMutableDictionary *params = [NSMutableDictionary new];
    if (locale) [params setObject:locale forKey:@"locale"];
    if (version) [params setObject:version forKey:@"version"];
    if (masteryListData) [params setObject:masteryListData forKey:@"masteryListData"];
    
    [self fireServiceWithRegion:region endpoint:@"mastery" params:params success:^(id response) {
        StaticMasteryList *list = [StaticMasteryList objectWithDictionary:response];
        success(list);
    } failure:failure];
}

- (void)getStaticMasteryByID:(NSInteger)masteryID region:(RGRegion*)region success:(void (^)(StaticMastery *))success failure:(void (^)(NSError *))failure
{
    NSString *endpoint = [NSString stringWithFormat:@"mastery/%ld", (long)masteryID];
    [self fireServiceWithRegion:region endpoint:endpoint params:nil success:^(id response) {
        StaticMastery *mastery = [StaticMastery objectWithDictionary:response];
        success(mastery);
    } failure:failure];
}

- (void)getStaticMasteryByID:(NSInteger)masteryID withLocale:(NSString*)locale version:(NSString*)version masteryListData:(NSString*)masteryListData region:(RGRegion *)region success:(void (^)(StaticMastery *))success failure:(void (^)(NSError *))failure
{
    NSString *endpoint = [NSString stringWithFormat:@"mastery/%ld", (long)masteryID];
    NSMutableDictionary *params = [NSMutableDictionary new];
    if (locale) [params setObject:locale forKey:@"locale"];
    if (version) [params setObject:version forKey:@"version"];
    if (masteryListData) [params setObject:masteryListData forKey:@"masteryListData"];
    
    [self fireServiceWithRegion:region endpoint:endpoint params:params success:^(id response) {
        StaticMastery *mastery = [StaticMastery objectWithDictionary:response];
        success(mastery);
    } failure:failure];
}

- (void)getStaticRealmregion:(RGRegion*)region success:(void (^)(StaticRealm *))success failure:(void (^)(NSError *))failure
{
	[self fireServiceWithRegion:region endpoint:@"realm" params:nil success:^(id response) {
        StaticRealm *realm = [StaticRealm objectWithDictionary:response];
        success(realm);
    } failure:failure];
}

- (void)getStaticRunesregion:(RGRegion*)region success:(void (^)(StaticRuneList *))success failure:(void (^)(NSError *))failure
{
    [self fireServiceWithRegion:region endpoint:@"rune" params:nil success:^(id response) {
        StaticRuneList *list = [StaticRuneList objectWithDictionary:response];
        success(list);
    } failure:failure];
}

- (void)getStaticRunesWithLocale:(NSString*)locale version:(NSString*)version runeListData:(NSString*)runeListData region:(RGRegion *)region success:(void (^)(StaticRuneList *))success failure:(void (^)(NSError *))failure
{
    NSMutableDictionary *params = [NSMutableDictionary new];
    if (locale) [params setObject:locale forKey:@"locale"];
    if (version) [params setObject:version forKey:@"version"];
    if (runeListData) [params setObject:runeListData forKey:@"runeListData"];
    
    [self fireServiceWithRegion:region endpoint:@"rune" params:params success:^(id response) {
        StaticRuneList *list = [StaticRuneList objectWithDictionary:response];
        success(list);
    } failure:failure];
}

- (void)getStaticRuneByID:(NSInteger)runeID region:(RGRegion*)region success:(void (^)(StaticRune *))success failure:(void (^)(NSError *))failure
{
    NSString *endpoint = [NSString stringWithFormat:@"rune/%ld", (long)runeID];
    [self fireServiceWithRegion:region endpoint:endpoint params:nil success:^(id response) {
        StaticRune *rune = [StaticRune objectWithDictionary:response];
        success(rune);
    } failure:failure];
}

- (void)getStaticRuneByID:(NSInteger)runeID withLocale:(NSString*)locale version:(NSString*)version runeListData:(NSString*)runeListData region:(RGRegion *)region success:(void (^)(StaticRune *))success failure:(void (^)(NSError *))failure
{
    NSString *endpoint = [NSString stringWithFormat:@"rune/%ld", (long)runeID];

    NSMutableDictionary *params = [NSMutableDictionary new];
    if (locale) [params setObject:locale forKey:@"locale"];
    if (version) [params setObject:version forKey:@"version"];
    if (runeListData) [params setObject:runeListData forKey:@"runeListData"];
    
    [self fireServiceWithRegion:region endpoint:endpoint params:params success:^(id response) {
        StaticRune *rune = [StaticRune objectWithDictionary:response];
        success(rune);
    } failure:failure];
}

- (void)getStaticSummonerSpellsregion:(RGRegion*)region success:(void (^)(StaticSummonerSpellList *))success failure:(void (^)(NSError *))failure
{
	[self fireServiceWithRegion:region endpoint:@"summoner-spell" params:nil success:^(id response) {
        StaticSummonerSpellList *list = [StaticSummonerSpellList objectWithDictionary:response];
        success(list);
    } failure:failure];
}

- (void)getStaticSummonerSpellsWithLocale:(NSString*)locale version:(NSString*)version dataById:(BOOL)dataById spellData:(NSString*)spellData region:(RGRegion *)region success:(void (^)(StaticSummonerSpellList *))success failure:(void (^)(NSError *))failure
{
    NSMutableDictionary *params = [NSMutableDictionary new];
    if (locale) [params setObject:locale forKey:@"locale"];
    if (version) [params setObject:version forKey:@"version"];
    if (spellData) [params setObject:spellData forKey:@"spellData"];
    
    [self fireServiceWithRegion:region endpoint:@"summoner-spell" params:params success:^(id response) {
        StaticSummonerSpellList *list = [StaticSummonerSpellList objectWithDictionary:response];
        success(list);
    } failure:failure];
}

- (void)getStaticSummonerSpellByID:(NSInteger)summonerSpellID region:(RGRegion*)region success:(void (^)(StaticSummonerSpell *))success failure:(void (^)(NSError *))failure
{
    NSString *endpoint = [NSString stringWithFormat:@"summoner-spell/%ld", (long)summonerSpellID];
    [self fireServiceWithRegion:region endpoint:endpoint params:nil success:^(id response) {
        StaticSummonerSpell *spell = [StaticSummonerSpell objectWithDictionary:response];
        success(spell);
    } failure:failure];
    
}

- (void)getStaticSummonerSpellByID:(NSInteger)summonerSpellID withLocale:(NSString*)locale version:(NSString*)version dataById:(BOOL)dataById spellData:(NSString*)spellData region:(RGRegion *)region success:(void (^)(StaticSummonerSpell *))success failure:(void (^)(NSError *))failure
{
    NSString *endpoint = [NSString stringWithFormat:@"summoner-spell/%ld", (long)summonerSpellID];

    NSMutableDictionary *params = [NSMutableDictionary new];
    if (locale) [params setObject:locale forKey:@"locale"];
    if (version) [params setObject:version forKey:@"version"];
    if (spellData) [params setObject:spellData forKey:@"spellData"];
    
    [self fireServiceWithRegion:region endpoint:endpoint params:params success:^(id response) {
        StaticSummonerSpell *spell = [StaticSummonerSpell objectWithDictionary:response];
        success(spell);
    } failure:failure];
}

- (void)getVersionregion:(RGRegion*)region success:(void (^)(NSArray *))success failure:(void (^)(NSError *))failure
{
    [self fireServiceWithRegion:region endpoint:@"versions" params:nil success:success failure:failure];
}

- (NSString *)versionURL {
    return @"/api/lol/static-data/%@/v1.2/";
}

- (BOOL)isGlobal {
    return YES;
}

- (NSString *)baseURL {
    return nil;
}

@end
