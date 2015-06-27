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

- (void)getStaticChampionsWithRegion:(RGRegion*)region success:(void (^)(StaticChampionList *))success failure:(void (^)(NSError *))failure;
- (void)getStaticChampionsWithLocale:(NSString*)locale version:(NSString*)version dataById:(BOOL)dataById champData:(NSString*)champData region:(RGRegion *)region success:(void (^)(StaticChampionList *))success failure:(void (^)(NSError *))failure;
- (void)getStaticChampionByID:(NSInteger)championID region:(RGRegion*)region success:(void (^)(StaticChampion *))success failure:(void (^)(NSError *))failure;
- (void)getStaticChampionByID:(NSInteger)championID withLocale:(NSString*)locale version:(NSString*)version dataById:(BOOL)dataById champData:(NSString*)champData region:(RGRegion *)region success:(void (^)(StaticChampion *))success failure:(void (^)(NSError *))failure;
- (void)getStaticItemsregion:(RGRegion*)region success:(void (^)(StaticItemList *))success failure:(void (^)(NSError *))failure;
- (void)getStaticItemsWithLocale:(NSString*)locale version:(NSString*)version itemListData:(NSString*)itemListData region:(RGRegion *)region success:(void (^)(StaticItemList *))success failure:(void (^)(NSError *))failure;
- (void)getStaticItemByID:(NSInteger)itemID region:(RGRegion*)region success:(void (^)(StaticItem *))success failure:(void (^)(NSError *))failure;
- (void)getStaticItemByID:(NSInteger)itemID withLocale:(NSString*)locale version:(NSString*)version itemListData:(NSString*)itemListData region:(RGRegion *)region success:(void (^)(StaticItem *))success failure:(void (^)(NSError *))failure;
- (void)getLanguageStringsregion:(RGRegion*)region success:(void (^)(StaticLanguageStrings *))success failure:(void (^)(NSError *))failure;
- (void)getLanguageStringsWithLocale:(NSString*)locale version:(NSString*)version region:(RGRegion *)region success:(void (^)(StaticLanguageStrings *))success failure:(void (^)(NSError *))failure;
- (void)getLanguagesregion:(RGRegion*)region success:(void (^)(NSArray *))success failure:(void (^)(NSError *))failure;
- (void)getMapregion:(RGRegion*)region success:(void (^)(StaticMapData *))success failure:(void (^)(NSError *))failure;
- (void)getMapWithLocale:(NSString*)locale version:(NSString*)version region:(RGRegion *)region success:(void (^)(StaticMapData *))success failure:(void (^)(NSError *))failure;
- (void)getStaticMasteriesregion:(RGRegion*)region success:(void (^)(StaticMasteryList *))success failure:(void (^)(NSError *))failure;
- (void)getStaticMasteriesWithLocale:(NSString*)locale version:(NSString*)version masteryListData:(NSString*)masteryListData region:(RGRegion *)region success:(void (^)(StaticMasteryList *))success failure:(void (^)(NSError *))failure;
- (void)getStaticMasteryByID:(NSInteger)masteryID region:(RGRegion*)region success:(void (^)(StaticMastery *))success failure:(void (^)(NSError *))failure;
- (void)getStaticMasteryByID:(NSInteger)masteryID withLocale:(NSString*)locale version:(NSString*)version masteryListData:(NSString*)masteryListData region:(RGRegion *)region success:(void (^)(StaticMastery *))success failure:(void (^)(NSError *))failure;
- (void)getStaticRealmregion:(RGRegion*)region success:(void (^)(StaticRealm *))success failure:(void (^)(NSError *))failure;
- (void)getStaticRunesregion:(RGRegion*)region success:(void (^)(StaticRuneList *))success failure:(void (^)(NSError *))failure;
- (void)getStaticRunesWithLocale:(NSString*)locale version:(NSString*)version runeListData:(NSString*)runeListData region:(RGRegion *)region success:(void (^)(StaticRuneList *))success failure:(void (^)(NSError *))failure;
- (void)getStaticRuneByID:(NSInteger)runeID region:(RGRegion*)region success:(void (^)(StaticRune *))success failure:(void (^)(NSError *))failure;
- (void)getStaticRuneByID:(NSInteger)runeID withLocale:(NSString*)locale version:(NSString*)version runeListData:(NSString*)runeListData region:(RGRegion *)region success:(void (^)(StaticRune *))success failure:(void (^)(NSError *))failure;
- (void)getStaticSummonerSpellsregion:(RGRegion*)region success:(void (^)(StaticSummonerSpellList *))success failure:(void (^)(NSError *))failure;
- (void)getStaticSummonerSpellsWithLocale:(NSString*)locale version:(NSString*)version dataById:(BOOL)dataById spellData:(NSString*)spellData region:(RGRegion *)region success:(void (^)(StaticSummonerSpellList *))success failure:(void (^)(NSError *))failure;
- (void)getStaticSummonerSpellByID:(NSInteger)summonerSpellID region:(RGRegion*)region success:(void (^)(StaticSummonerSpell *))success failure:(void (^)(NSError *))failure;
- (void)getStaticSummonerSpellByID:(NSInteger)summonerSpellID withLocale:(NSString*)locale version:(NSString*)version dataById:(BOOL)dataById spellData:(NSString*)spellData region:(RGRegion *)region success:(void (^)(StaticSummonerSpell *))success failure:(void (^)(NSError *))failure;
- (void)getVersionregion:(RGRegion*)region success:(void (^)(NSArray *))success failure:(void (^)(NSError *))failure;

@end
