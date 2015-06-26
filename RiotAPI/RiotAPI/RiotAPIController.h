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

///Instance Methods
///Champion
- (void)getChampionsWithAPIKey:(NSString*)key region:(RGRegion*)region success:(void (^)(MetaChampionList *))success failure:(void (^)(NSError *))failure;
- (void)getChampionsFreeToPlay:(BOOL)freeToPlay withAPIKey:(NSString*)key region:(RGRegion*)region success:(void (^)(MetaChampionList *))success failure:(void (^)(NSError *))failure;
- (void)getChampionByID:(NSInteger)championID withAPIKey:(NSString*)key region:(RGRegion*)region success:(void (^)(MetaChampion *))success failure:(void (^)(NSError *))failure;

///Current Game
- (void)getCurrentGameForSummonerID:(NSInteger)summonerID withAPIKey:(NSString*)key region:(RGRegion*)region success:(void (^)(CurrentGameInfo *))success failure:(void (^)(NSError *))failure;
- (void)getFeaturedGamesWithAPIKey:(NSString*)key region:(RGRegion*)region success:(void (^)(FeaturedGames *))success failure:(void (^)(NSError *))failure;


///Game
- (void)getRecentGamesForSummonerID:(NSInteger)summonerID withAPIKey:(NSString*)key region:(RGRegion*)region success:(void (^)(RecentGames *))success failure:(void (^)(NSError *))failure;

///League
- (void)getLeaguesForSummonerIDs:(NSArray*)summonerIDs withAPIKey:(NSString*)key region:(RGRegion*)region success:(void (^)(NSDictionary *))success failure:(void (^)(NSError *))failure;
- (void)getLeagueEntriesForSummonerIDs:(NSArray*)summonerIDs withAPIKey:(NSString*)key region:(RGRegion*)region success:(void (^)(NSDictionary *))success failure:(void (^)(NSError *))failure;
- (void)getLeaguesForTeamIDs:(NSArray*)teamIDs withAPIKey:(NSString*)key region:(RGRegion*)region success:(void (^)(NSDictionary *))success failure:(void (^)(NSError *))failure;
- (void)getLeagueEntriesForTeamIDs:(NSArray*)teamIDs withAPIKey:(NSString*)key region:(RGRegion*)region success:(void (^)(NSDictionary *))success failure:(void (^)(NSError *))failure;
- (void)getChallengerLeagueWithQueueType:(NSString*)queueType region:(RGRegion*)region success:(void (^)(League *))success failure:(void (^)(NSError *))failure;
- (void)getMasterLeagueWithQueueType:(NSString*)queueType region:(RGRegion*)region success:(void (^)(League *))success failure:(void (^)(NSError *))failure;

///Static Data
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

///Status
- (void)getShardsWithSuccess:(void (^)(NSArray *))success failure:(void (^)(NSError *))failure;
- (void)getShardsForRegion:(RGRegion*)region success:(void (^)(ShardStatus *))success failure:(void (^)(NSError *))failure;

///Match
- (void)getMatchForMatchID:(long)matchID withAPIKey:(NSString*)key region:(RGRegion*)region success:(void (^)(MatchDetail *))success failure:(void (^)(NSError *))failure;
- (void)getMatchForMatchID:(long)matchID includeTimeline:(BOOL)includeTimeine withAPIKey:(NSString *)key region:(RGRegion *)region success:(void (^)(MatchDetail *))success failure:(void (^)(NSError *))failure;

///Match History
- (void)getMatchHistoryForSummonerID:(long)summonerID withAPIKey:(NSString*)key region:(RGRegion*)region success:(void (^)(PlayerHistory *))success failure:(void (^)(NSError *))failure;
- (void)getMatchHistoryForSummonerID:(long)summonerID championIDs:(NSArray*)championIDs rankedQueues:(NSArray*)rankedQueues beginIndex:(NSInteger)beginIndex endIndex:(NSInteger)endIndex withAPIKey:(NSString *)key region:(RGRegion *)region success:(void (^)(PlayerHistory *))success failure:(void (^)(NSError *))failure;

///Stats
- (void)getRankedStatsForSummonerID:(long)summonerID withAPIKey:(NSString*)key region:(RGRegion*)region success:(void (^)(RankedStats *))success failure:(void (^)(NSError *))failure;
- (void)getRankedStatsForSummonerID:(long)summonerID season:(NSString*)season withAPIKey:(NSString *)key region:(RGRegion *)region success:(void (^)(RankedStats *))success failure:(void (^)(NSError *))failure;
- (void)getSummaryStatsForSummonerID:(long)summonerID withAPIKey:(NSString*)key region:(RGRegion*)region success:(void (^)(PlayerStatsSummaryList *))success failure:(void (^)(NSError *))failure;
- (void)getSummaryStatsForSummonerID:(long)summonerID season:(NSString*)season withAPIKey:(NSString *)key region:(RGRegion *)region success:(void (^)(PlayerStatsSummaryList *))success failure:(void (^)(NSError *))failure;

///Summoner
- (void)getSummonersForSummonerNames:(NSArray*)summonerNames withAPIKey:(NSString*)key region:(RGRegion*)region success:(void (^)(NSDictionary *))success failure:(void (^)(NSError *))failure;
- (void)getSummonersForSummonerIDs:(NSArray*)summonerIDs withAPIKey:(NSString*)key region:(RGRegion*)region success:(void (^)(NSDictionary *))success failure:(void (^)(NSError *))failure;
- (void)getSummonerMasteriesForSummonerIDs:(NSArray*)summonerIDs withAPIKey:(NSString*)key region:(RGRegion*)region success:(void (^)(NSDictionary *))success failure:(void (^)(NSError *))failure;
- (void)getSummonerNamesForSummonerIDs:(NSArray*)summonerIDs withAPIKey:(NSString*)key region:(RGRegion*)region success:(void (^)(NSDictionary *))success failure:(void (^)(NSError *))failure;
- (void)getSummonerRunesForSummonerIDs:(NSArray*)summonerIDs withAPIKey:(NSString*)key region:(RGRegion*)region success:(void (^)(NSDictionary *))success failure:(void (^)(NSError *))failure;

///Team
- (void)getTeamsForSummonerIDs:(NSArray*)summonerIDs withAPIKey:(NSString*)key region:(RGRegion*)region success:(void (^)(NSDictionary *))success failure:(void (^)(NSError *))failure;
- (void)getTeamsForTeamIDs:(NSArray*)teamIDs withAPIKey:(NSString*)key region:(RGRegion*)region success:(void (^)(NSDictionary *))success failure:(void (^)(NSError *))failure;

@end
