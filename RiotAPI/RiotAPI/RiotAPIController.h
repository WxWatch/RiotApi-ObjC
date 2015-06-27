//
//  RiotAPIManager.h
//  RiotAPI
//
//  Created by James Glenn on 5/19/15.
//  Copyright (c) 2015 James Glenn. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RGRegion.h"
#import "MetaChampionList.h"
#import "CurrentGameInfo.h"
#import "FeaturedGames.h"
#import "RecentGames.h"
#import "League.h"
#import "MatchDetail.h"
#import "PlayerHistory.h"
#import "RankedStats.h"
#import "PlayerStatsSummaryList.h"
#import "ShardStatus.h"
#import "StaticChampionList.h"
#import "StaticItemList.h"
#import "StaticLanguageStrings.h"
#import "StaticMapData.h"
#import "StaticMasteryList.h"
#import "StaticRealm.h"
#import "StaticRuneList.h"
#import "StaticSummonerSpellList.h"

@interface RiotAPIController : NSObject

///Initialization Methods
+ (instancetype)initializeWithAPIKey:(NSString*)apiKey;
+ (instancetype)initializeWithBaseURLString:(NSString*)baseURLString;

///Champion
- (void)getChampionsregion:(RGRegion*)region success:(void (^)(MetaChampionList *))success failure:(void (^)(NSError *))failure;
- (void)getChampionsFreeToPlay:(BOOL)freeToPlay region:(RGRegion*)region success:(void (^)(MetaChampionList *))success failure:(void (^)(NSError *))failure;
- (void)getChampionByID:(NSInteger)championID region:(RGRegion*)region success:(void (^)(MetaChampion *))success failure:(void (^)(NSError *))failure;

///Current Game
- (void)getCurrentGameForSummonerID:(NSInteger)summonerID region:(RGRegion*)region success:(void (^)(CurrentGameInfo *))success failure:(void (^)(NSError *))failure;
- (void)getFeaturedGamesregion:(RGRegion*)region success:(void (^)(FeaturedGames *))success failure:(void (^)(NSError *))failure;


///Game
- (void)getRecentGamesForSummonerID:(NSInteger)summonerID region:(RGRegion*)region success:(void (^)(RecentGames *))success failure:(void (^)(NSError *))failure;

///League
- (void)getLeaguesForSummonerIDs:(NSArray*)summonerIDs region:(RGRegion*)region success:(void (^)(NSDictionary *))success failure:(void (^)(NSError *))failure;
- (void)getLeagueEntriesForSummonerIDs:(NSArray*)summonerIDs region:(RGRegion*)region success:(void (^)(NSDictionary *))success failure:(void (^)(NSError *))failure;
- (void)getLeaguesForTeamIDs:(NSArray*)teamIDs region:(RGRegion*)region success:(void (^)(NSDictionary *))success failure:(void (^)(NSError *))failure;
- (void)getLeagueEntriesForTeamIDs:(NSArray*)teamIDs region:(RGRegion*)region success:(void (^)(NSDictionary *))success failure:(void (^)(NSError *))failure;
- (void)getChallengerLeagueWithQueueType:(NSString*)queueType region:(RGRegion*)region success:(void (^)(League *))success failure:(void (^)(NSError *))failure;
- (void)getMasterLeagueWithQueueType:(NSString*)queueType region:(RGRegion*)region success:(void (^)(League *))success failure:(void (^)(NSError *))failure;

///Static Data
- (void)getStaticChampionsregion:(RGRegion*)region success:(void (^)(StaticChampionList *))success failure:(void (^)(NSError *))failure;
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

///Status
- (void)getShardsWithSuccess:(void (^)(NSArray *))success failure:(void (^)(NSError *))failure;
- (void)getShardsForRegion:(RGRegion*)region success:(void (^)(ShardStatus *))success failure:(void (^)(NSError *))failure;

///Match
- (void)getMatchForMatchID:(long)matchID region:(RGRegion*)region success:(void (^)(MatchDetail *))success failure:(void (^)(NSError *))failure;
- (void)getMatchForMatchID:(long)matchID includeTimeline:(BOOL)includeTimeine region:(RGRegion *)region success:(void (^)(MatchDetail *))success failure:(void (^)(NSError *))failure;

///Match History
- (void)getMatchHistoryForSummonerID:(long)summonerID region:(RGRegion*)region success:(void (^)(PlayerHistory *))success failure:(void (^)(NSError *))failure;
- (void)getMatchHistoryForSummonerID:(long)summonerID championIDs:(NSArray*)championIDs rankedQueues:(NSArray*)rankedQueues beginIndex:(NSInteger)beginIndex endIndex:(NSInteger)endIndex region:(RGRegion *)region success:(void (^)(PlayerHistory *))success failure:(void (^)(NSError *))failure;

///Stats
- (void)getRankedStatsForSummonerID:(long)summonerID region:(RGRegion*)region success:(void (^)(RankedStats *))success failure:(void (^)(NSError *))failure;
- (void)getRankedStatsForSummonerID:(long)summonerID season:(NSString*)season region:(RGRegion *)region success:(void (^)(RankedStats *))success failure:(void (^)(NSError *))failure;
- (void)getSummaryStatsForSummonerID:(long)summonerID region:(RGRegion*)region success:(void (^)(PlayerStatsSummaryList *))success failure:(void (^)(NSError *))failure;
- (void)getSummaryStatsForSummonerID:(long)summonerID season:(NSString*)season region:(RGRegion *)region success:(void (^)(PlayerStatsSummaryList *))success failure:(void (^)(NSError *))failure;

///Summoner
- (void)getSummonersForSummonerNames:(NSArray*)summonerNames region:(RGRegion*)region success:(void (^)(NSDictionary *))success failure:(void (^)(NSError *))failure;
- (void)getSummonersForSummonerIDs:(NSArray*)summonerIDs region:(RGRegion*)region success:(void (^)(NSDictionary *))success failure:(void (^)(NSError *))failure;
- (void)getSummonerMasteriesForSummonerIDs:(NSArray*)summonerIDs region:(RGRegion*)region success:(void (^)(NSDictionary *))success failure:(void (^)(NSError *))failure;
- (void)getSummonerNamesForSummonerIDs:(NSArray*)summonerIDs region:(RGRegion*)region success:(void (^)(NSDictionary *))success failure:(void (^)(NSError *))failure;
- (void)getSummonerRunesForSummonerIDs:(NSArray*)summonerIDs region:(RGRegion*)region success:(void (^)(NSDictionary *))success failure:(void (^)(NSError *))failure;

///Team
- (void)getTeamsForSummonerIDs:(NSArray*)summonerIDs region:(RGRegion*)region success:(void (^)(NSDictionary *))success failure:(void (^)(NSError *))failure;
- (void)getTeamsForTeamIDs:(NSArray*)teamIDs region:(RGRegion*)region success:(void (^)(NSDictionary *))success failure:(void (^)(NSError *))failure;

@end
