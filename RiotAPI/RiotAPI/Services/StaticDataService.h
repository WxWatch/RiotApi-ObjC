//
//  StaticDataService.h
//  RiotAPI
//
//  Created by James Glenn on 6/11/15.
//  Copyright (c) 2015 James Glenn. All rights reserved.
//

#import "BaseService.h"
#import "StaticChampionList.h"
#import "StaticItemList.h"
#import "StaticLanguageStrings.h"
#import "StaticMapData.h"
#import "StaticMasteryList.h"
#import "StaticRealm.h"
#import "StaticRuneList.h"
#import "StaticSummonerSpellList.h"

@interface StaticDataService : BaseService

- (void)getStaticChampionsWithAPIKey:(NSString*)key region:(RGRegion*)region success:(void (^)(StaticChampionList *))success failure:(void (^)(NSError *))failure;
- (void)getStaticChampionsWithLocale:(NSString*)locale version:(NSString*)version dataById:(BOOL)dataById champData:(NSString*)champData withAPIKey:(NSString *)key region:(RGRegion *)region success:(void (^)(StaticChampionList *))success failure:(void (^)(NSError *))failure;
- (void)getStaticChampionByID:(NSInteger)championID withAPIKey:(NSString*)key region:(RGRegion*)region success:(void (^)(StaticChampion *))success failure:(void (^)(NSError *))failure;
- (void)getStaticChampionByID:(NSInteger)championID withLocale:(NSString*)locale version:(NSString*)version dataById:(BOOL)dataById champData:(NSString*)champData withAPIKey:(NSString *)key region:(RGRegion *)region success:(void (^)(StaticChampion *))success failure:(void (^)(NSError *))failure;
- (void)getStaticItemsWithAPIKey:(NSString*)key region:(RGRegion*)region success:(void (^)(StaticItemList *))success failure:(void (^)(NSError *))failure;
- (void)getStaticItemsWithLocale:(NSString*)locale version:(NSString*)version itemListData:(NSString*)itemListData withAPIKey:(NSString *)key region:(RGRegion *)region success:(void (^)(StaticItemList *))success failure:(void (^)(NSError *))failure;
- (void)getStaticItemByID:(NSInteger)itemID withAPIKey:(NSString*)key region:(RGRegion*)region success:(void (^)(StaticItem *))success failure:(void (^)(NSError *))failure;
- (void)getStaticItemByID:(NSInteger)itemID withLocale:(NSString*)locale version:(NSString*)version itemListData:(NSString*)itemListData withAPIKey:(NSString *)key region:(RGRegion *)region success:(void (^)(StaticItem *))success failure:(void (^)(NSError *))failure;
- (void)getLanguageStringsWithAPIKey:(NSString*)key region:(RGRegion*)region success:(void (^)(StaticLanguageStrings *))success failure:(void (^)(NSError *))failure;
- (void)getLanguageStringsWithLocale:(NSString*)locale version:(NSString*)version withAPIKey:(NSString *)key region:(RGRegion *)region success:(void (^)(StaticLanguageStrings *))success failure:(void (^)(NSError *))failure;
- (void)getLanguagesWithAPIKey:(NSString*)key region:(RGRegion*)region success:(void (^)(NSArray *))success failure:(void (^)(NSError *))failure;
- (void)getMapWithAPIKey:(NSString*)key region:(RGRegion*)region success:(void (^)(StaticMapData *))success failure:(void (^)(NSError *))failure;
- (void)getMapWithLocale:(NSString*)locale version:(NSString*)version withAPIKey:(NSString *)key region:(RGRegion *)region success:(void (^)(StaticMapData *))success failure:(void (^)(NSError *))failure;
- (void)getStaticMasteriesWithAPIKey:(NSString*)key region:(RGRegion*)region success:(void (^)(StaticMasteryList *))success failure:(void (^)(NSError *))failure;
- (void)getStaticMasteriesWithLocale:(NSString*)locale version:(NSString*)version masteryListData:(NSString*)masteryListData withAPIKey:(NSString *)key region:(RGRegion *)region success:(void (^)(StaticMasteryList *))success failure:(void (^)(NSError *))failure;
- (void)getStaticMasteryByID:(NSInteger)masteryID withAPIKey:(NSString*)key region:(RGRegion*)region success:(void (^)(StaticMastery *))success failure:(void (^)(NSError *))failure;
- (void)getStaticMasteryByID:(NSInteger)masteryID withLocale:(NSString*)locale version:(NSString*)version masteryListData:(NSString*)masteryListData withAPIKey:(NSString *)key region:(RGRegion *)region success:(void (^)(StaticMastery *))success failure:(void (^)(NSError *))failure;
- (void)getStaticRealmWithAPIKey:(NSString*)key region:(RGRegion*)region success:(void (^)(StaticRealm *))success failure:(void (^)(NSError *))failure;
- (void)getStaticRunesWithAPIKey:(NSString*)key region:(RGRegion*)region success:(void (^)(StaticRuneList *))success failure:(void (^)(NSError *))failure;
- (void)getStaticRunesWithLocale:(NSString*)locale version:(NSString*)version runeListData:(NSString*)runeListData withAPIKey:(NSString *)key region:(RGRegion *)region success:(void (^)(StaticRuneList *))success failure:(void (^)(NSError *))failure;
- (void)getStaticRuneByID:(NSInteger)runeID withAPIKey:(NSString*)key region:(RGRegion*)region success:(void (^)(StaticRune *))success failure:(void (^)(NSError *))failure;
- (void)getStaticRuneByID:(NSInteger)runeID withLocale:(NSString*)locale version:(NSString*)version runeListData:(NSString*)runeListData withAPIKey:(NSString *)key region:(RGRegion *)region success:(void (^)(StaticRune *))success failure:(void (^)(NSError *))failure;
- (void)getStaticSummonerSpellsWithAPIKey:(NSString*)key region:(RGRegion*)region success:(void (^)(StaticSummonerSpellList *))success failure:(void (^)(NSError *))failure;
- (void)getStaticSummonerSpellsWithLocale:(NSString*)locale version:(NSString*)version dataById:(BOOL)dataById spellData:(NSString*)spellData withAPIKey:(NSString *)key region:(RGRegion *)region success:(void (^)(StaticSummonerSpellList *))success failure:(void (^)(NSError *))failure;
- (void)getStaticSummonerSpellByID:(NSInteger)summonerSpellID withAPIKey:(NSString*)key region:(RGRegion*)region success:(void (^)(StaticSummonerSpell *))success failure:(void (^)(NSError *))failure;
- (void)getStaticSummonerSpellByID:(NSInteger)summonerSpellID withLocale:(NSString*)locale version:(NSString*)version dataById:(BOOL)dataById spellData:(NSString*)spellData withAPIKey:(NSString *)key region:(RGRegion *)region success:(void (^)(StaticSummonerSpell *))success failure:(void (^)(NSError *))failure;
- (void)getVersionWithAPIKey:(NSString*)key region:(RGRegion*)region success:(void (^)(NSArray *))success failure:(void (^)(NSError *))failure;

@end
