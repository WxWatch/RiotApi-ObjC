//
//  RiotAPIManager.m
//  RiotAPI
//
//  Created by James Glenn on 5/19/15.
//  Copyright (c) 2015 James Glenn. All rights reserved.
//

#import "RiotAPIController.h"

#import "Services.h"

@implementation RiotAPIController

- (void)getChampionsWithAPIKey:(NSString*)key region:(RGRegion*)region success:(void (^)(MetaChampionList *))success failure:(void (^)(NSError *))failure {
    [[ChampionService new] getChampionsWithAPIKey:key region:region success:success failure:failure];
}

- (void)getChampionsFreeToPlay:(BOOL)freeToPlay withAPIKey:(NSString*)key region:(RGRegion*)region success:(void (^)(MetaChampionList *))success failure:(void (^)(NSError *))failure {
    [[ChampionService new] getChampionsFreeToPlay:freeToPlay withAPIKey:key region:region success:success failure:failure];
}

- (void)getChampionByID:(NSInteger)championID withAPIKey:(NSString*)key region:(RGRegion*)region success:(void (^)(MetaChampion *))success failure:(void (^)(NSError *))failure {
    [[ChampionService new] getChampionByID:championID withAPIKey:key region:region success:success failure:failure];
}

- (void)getCurrentGameForSummonerID:(NSInteger)summonerID withAPIKey:(NSString*)key region:(RGRegion*)region success:(void (^)(CurrentGameInfo *))success failure:(void (^)(NSError *))failure {
    [[CurrentGameService new] getCurrentGameForSummonerID:summonerID withAPIKey:key region:region success:success failure:failure];
}

- (void)getFeaturedGamesWithAPIKey:(NSString*)key region:(RGRegion*)region success:(void (^)(FeaturedGames *))success failure:(void (^)(NSError *))failure {
    [[FeaturedGamesService new] getFeaturedGamesWithAPIKey:key region:region success:success failure:failure];
}

- (void)getRecentGamesForSummonerID:(NSInteger)summonerID withAPIKey:(NSString*)key region:(RGRegion*)region success:(void (^)(RecentGames *))success failure:(void (^)(NSError *))failure {
    [[GameService new] getRecentGamesForSummonerID:summonerID withAPIKey:key region:region success:success failure:failure];
}

- (void)getLeaguesForSummonerIDs:(NSArray*)summonerIDs withAPIKey:(NSString*)key region:(RGRegion*)region success:(void (^)(NSDictionary *))success failure:(void (^)(NSError *))failure {
    [[LeagueService new] getLeaguesForSummonerIDs:summonerIDs withAPIKey:key region:region success:success failure:failure];
}

- (void)getLeagueEntriesForSummonerIDs:(NSArray*)summonerIDs withAPIKey:(NSString*)key region:(RGRegion*)region success:(void (^)(NSDictionary *))success failure:(void (^)(NSError *))failure {
    [[LeagueService new] getLeagueEntriesForSummonerIDs:summonerIDs withAPIKey:key region:region success:success failure:failure];
}

- (void)getLeaguesForTeamIDs:(NSArray*)teamIDs withAPIKey:(NSString*)key region:(RGRegion*)region success:(void (^)(NSDictionary *))success failure:(void (^)(NSError *))failure {
    [[LeagueService new] getLeaguesForTeamIDs:teamIDs withAPIKey:key region:region success:success failure:failure];
}

- (void)getLeagueEntriesForTeamIDs:(NSArray*)teamIDs withAPIKey:(NSString*)key region:(RGRegion*)region success:(void (^)(NSDictionary *))success failure:(void (^)(NSError *))failure {
    [[LeagueService new] getLeagueEntriesForTeamIDs:teamIDs withAPIKey:key region:region success:success failure:failure];
}

- (void)getChallengerLeagueWithAPIKey:(NSString*)key region:(RGRegion*)region success:(void (^)(League *))success failure:(void (^)(NSError *))failure {
    [[LeagueService new] getChallengerLeagueWithAPIKey:key region:region success:success failure:failure];
}

- (void)getMasterLeagueWithAPIKey:(NSString*)key region:(RGRegion*)region success:(void (^)(League *))success failure:(void (^)(NSError *))failure {
    [[LeagueService new] getMasterLeagueWithAPIKey:key region:region success:success failure:failure];
}

- (void)getStaticChampionsWithAPIKey:(NSString*)key region:(RGRegion*)region success:(void (^)(StaticChampionList *))success failure:(void (^)(NSError *))failure {
    [[StaticDataService new] getStaticChampionsWithAPIKey:key region:region success:success failure:failure];
}

- (void)getStaticChampionsWithLocale:(NSString*)locale version:(NSString*)version dataById:(BOOL)dataById champData:(NSString*)champData withAPIKey:(NSString *)key region:(RGRegion *)region success:(void (^)(StaticChampionList *))success failure:(void (^)(NSError *))failure {
    [[StaticDataService new] getStaticChampionsWithLocale:locale version:version dataById:dataById champData:champData withAPIKey:key region:region success:success failure:failure];
}

- (void)getStaticChampionByID:(NSInteger)championID withAPIKey:(NSString*)key region:(RGRegion*)region success:(void (^)(StaticChampion *))success failure:(void (^)(NSError *))failure {
    [[StaticDataService new] getStaticChampionByID:championID withAPIKey:key region:region success:success failure:failure];
}

- (void)getStaticChampionByID:(NSInteger)championID withLocale:(NSString*)locale version:(NSString*)version dataById:(BOOL)dataById champData:(NSString*)champData withAPIKey:(NSString *)key region:(RGRegion *)region success:(void (^)(StaticChampion *))success failure:(void (^)(NSError *))failure {
    [[StaticDataService new] getStaticChampionByID:championID withLocale:locale version:version dataById:dataById champData:champData withAPIKey:key region:region success:success failure:failure];
}

- (void)getStaticItemsWithAPIKey:(NSString*)key region:(RGRegion*)region success:(void (^)(StaticItemList *))success failure:(void (^)(NSError *))failure {
    [[StaticDataService new] getStaticItemsWithAPIKey:key region:region success:success failure:failure];
}

- (void)getStaticItemsWithLocale:(NSString*)locale version:(NSString*)version itemListData:(NSString*)itemListData withAPIKey:(NSString *)key region:(RGRegion *)region success:(void (^)(StaticItemList *))success failure:(void (^)(NSError *))failure {
    [[StaticDataService new] getStaticItemsWithLocale:locale version:version itemListData:itemListData withAPIKey:key region:region success:success failure:failure];
}

- (void)getStaticItemByID:(NSInteger)itemID withAPIKey:(NSString*)key region:(RGRegion*)region success:(void (^)(StaticItem *))success failure:(void (^)(NSError *))failure {
    [[StaticDataService new] getStaticItemByID:itemID withAPIKey:key region:region success:success failure:failure];
}

- (void)getStaticItemByID:(NSInteger)itemID withLocale:(NSString*)locale version:(NSString*)version itemListData:(NSString*)itemListData withAPIKey:(NSString *)key region:(RGRegion *)region success:(void (^)(StaticItem *))success failure:(void (^)(NSError *))failure {
    [[StaticDataService new] getStaticItemByID:itemID withLocale:locale version:version itemListData:itemListData withAPIKey:key region:region success:success failure:failure];
}

- (void)getLanguageStringsWithAPIKey:(NSString*)key region:(RGRegion*)region success:(void (^)(StaticLanguageStrings *))success failure:(void (^)(NSError *))failure {
    [[StaticDataService new] getLanguageStringsWithAPIKey:key region:region success:success failure:failure];
}

- (void)getLanguageStringsWithLocale:(NSString*)locale version:(NSString*)version withAPIKey:(NSString *)key region:(RGRegion *)region success:(void (^)(StaticLanguageStrings *))success failure:(void (^)(NSError *))failure {
    [[StaticDataService new] getLanguageStringsWithLocale:locale version:version withAPIKey:key region:region success:success failure:failure];
}

- (void)getLanguagesWithAPIKey:(NSString*)key region:(RGRegion*)region success:(void (^)(NSArray *))success failure:(void (^)(NSError *))failure {
    [[StaticDataService new] getLanguagesWithAPIKey:key region:region success:success failure:failure];
}

- (void)getMapWithAPIKey:(NSString*)key region:(RGRegion*)region success:(void (^)(StaticMapData *))success failure:(void (^)(NSError *))failure {
    [[StaticDataService new] getMapWithAPIKey:key region:region success:success failure:failure];
}

- (void)getMapWithLocale:(NSString*)locale version:(NSString*)version withAPIKey:(NSString *)key region:(RGRegion *)region success:(void (^)(StaticMapData *))success failure:(void (^)(NSError *))failure {
    [[StaticDataService new] getMapWithLocale:locale version:version withAPIKey:key region:region success:success failure:failure];
}

- (void)getStaticMasteriesWithAPIKey:(NSString*)key region:(RGRegion*)region success:(void (^)(StaticMasteryList *))success failure:(void (^)(NSError *))failure {
    [[StaticDataService new] getStaticMasteriesWithAPIKey:key region:region success:success failure:failure];
}

- (void)getStaticMasteriesWithLocale:(NSString*)locale version:(NSString*)version masteryListData:(NSString*)masteryListData withAPIKey:(NSString *)key region:(RGRegion *)region success:(void (^)(StaticMasteryList *))success failure:(void (^)(NSError *))failure {
    [[StaticDataService new] getStaticMasteriesWithLocale:locale version:version masteryListData:masteryListData withAPIKey:key region:region success:success failure:failure];
}

- (void)getStaticMasteryByID:(NSInteger)masteryID withAPIKey:(NSString*)key region:(RGRegion*)region success:(void (^)(StaticMastery *))success failure:(void (^)(NSError *))failure {
    [[StaticDataService new] getStaticMasteryByID:masteryID withAPIKey:key region:region success:success failure:failure];
}

- (void)getStaticMasteryByID:(NSInteger)masteryID withLocale:(NSString*)locale version:(NSString*)version masteryListData:(NSString*)masteryListData withAPIKey:(NSString *)key region:(RGRegion *)region success:(void (^)(StaticMastery *))success failure:(void (^)(NSError *))failure {
    [[StaticDataService new] getStaticMasteryByID:masteryID withLocale:locale version:version masteryListData:masteryListData withAPIKey:key region:region success:success failure:failure];
}

- (void)getStaticRealmWithAPIKey:(NSString*)key region:(RGRegion*)region success:(void (^)(StaticRealm *))success failure:(void (^)(NSError *))failure {
    [[StaticDataService new] getStaticRealmWithAPIKey:key region:region success:success failure:failure];
}

- (void)getStaticRunesWithAPIKey:(NSString*)key region:(RGRegion*)region success:(void (^)(StaticRuneList *))success failure:(void (^)(NSError *))failure {
    [[StaticDataService new] getStaticRunesWithAPIKey:key region:region success:success failure:failure];
}

- (void)getStaticRunesWithLocale:(NSString*)locale version:(NSString*)version runeListData:(NSString*)runeListData withAPIKey:(NSString *)key region:(RGRegion *)region success:(void (^)(StaticRuneList *))success failure:(void (^)(NSError *))failure {
    [[StaticDataService new] getStaticRunesWithLocale:locale version:version runeListData:runeListData withAPIKey:key region:region success:success failure:failure];
}

- (void)getStaticRuneByID:(NSInteger)runeID withAPIKey:(NSString*)key region:(RGRegion*)region success:(void (^)(StaticRune *))success failure:(void (^)(NSError *))failure {
    [[StaticDataService new] getStaticRuneByID:runeID withAPIKey:key region:region success:success failure:failure];
}

- (void)getStaticRuneByID:(NSInteger)runeID withLocale:(NSString*)locale version:(NSString*)version runeListData:(NSString*)runeListData withAPIKey:(NSString *)key region:(RGRegion *)region success:(void (^)(StaticRune *))success failure:(void (^)(NSError *))failure {
    [[StaticDataService new] getStaticRuneByID:runeID withLocale:locale version:version runeListData:runeListData withAPIKey:key region:region success:success failure:failure];
}

- (void)getStaticSummonerSpellsWithAPIKey:(NSString*)key region:(RGRegion*)region success:(void (^)(StaticSummonerSpellList *))success failure:(void (^)(NSError *))failure {
    [[StaticDataService new] getStaticSummonerSpellsWithAPIKey:key region:region success:success failure:failure];
}

- (void)getStaticSummonerSpellsWithLocale:(NSString*)locale version:(NSString*)version dataById:(BOOL)dataById spellData:(NSString*)spellData withAPIKey:(NSString *)key region:(RGRegion *)region success:(void (^)(StaticSummonerSpellList *))success failure:(void (^)(NSError *))failure {
    [[StaticDataService new] getStaticSummonerSpellsWithLocale:locale version:version dataById:dataById spellData:spellData withAPIKey:key region:region success:success failure:failure];
}

- (void)getStaticSummonerSpellByID:(NSInteger)summonerSpellID withAPIKey:(NSString*)key region:(RGRegion*)region success:(void (^)(StaticSummonerSpell *))success failure:(void (^)(NSError *))failure {
    [[StaticDataService new] getStaticSummonerSpellByID:summonerSpellID withAPIKey:key region:region success:success failure:failure];
}

- (void)getStaticSummonerSpellByID:(NSInteger)summonerSpellID withLocale:(NSString*)locale version:(NSString*)version dataById:(BOOL)dataById spellData:(NSString*)spellData withAPIKey:(NSString *)key region:(RGRegion *)region success:(void (^)(StaticSummonerSpell *))success failure:(void (^)(NSError *))failure {
    [[StaticDataService new] getStaticSummonerSpellByID:summonerSpellID withLocale:locale version:version dataById:dataById spellData:spellData withAPIKey:key region:region success:success failure:failure];
}

- (void)getVersionWithAPIKey:(NSString*)key region:(RGRegion*)region success:(void (^)(NSArray *))success failure:(void (^)(NSError *))failure {
    [[StaticDataService new] getVersionWithAPIKey:key region:region success:success failure:failure];
}

- (void)getShardsWithSuccess:(void (^)(NSArray *))success failure:(void (^)(NSError *))failure {
    [[StatusService new] getShardsWithSuccess:success failure:failure];
}

- (void)getShardsForRegion:(RGRegion*)region success:(void (^)(ShardStatus *))success failure:(void (^)(NSError *))failure {
    [[StatusService new] getShardsForRegion:region success:success failure:failure];
}

- (void)getMatchForMatchID:(long)matchID withAPIKey:(NSString*)key region:(RGRegion*)region success:(void (^)(MatchDetail *))success failure:(void (^)(NSError *))failure {
    [[MatchService new] getMatchForMatchID:matchID includeTimeline:NO withAPIKey:key region:region success:success failure:failure];
}

- (void)getMatchForMatchID:(long)matchID includeTimeline:(BOOL)includeTimeine withAPIKey:(NSString *)key region:(RGRegion *)region success:(void (^)(MatchDetail *))success failure:(void (^)(NSError *))failure {
    [[MatchService new] getMatchForMatchID:matchID includeTimeline:includeTimeine withAPIKey:key region:region success:success failure:failure];
}

- (void)getMatchHistoryForSummonerID:(long)summonerID withAPIKey:(NSString*)key region:(RGRegion*)region success:(void (^)(PlayerHistory *))success failure:(void (^)(NSError *))failure {
    [[MatchHistoryService new] getMatchHistoryForSummonerID:summonerID championIDs:nil rankedQueues:nil beginIndex:NSIntegerMax endIndex:NSIntegerMax withAPIKey:key region:region success:success failure:failure];
}

- (void)getMatchHistoryForSummonerID:(long)summonerID championIDs:(NSArray*)championIDs rankedQueues:(NSArray*)rankedQueues beginIndex:(NSInteger)beginIndex endIndex:(NSInteger)endIndex withAPIKey:(NSString *)key region:(RGRegion *)region success:(void (^)(PlayerHistory *))success failure:(void (^)(NSError *))failure {
    [[MatchHistoryService new] getMatchHistoryForSummonerID:summonerID championIDs:championIDs rankedQueues:rankedQueues beginIndex:beginIndex endIndex:endIndex withAPIKey:key region:region success:success failure:failure];
}

- (void)getRankedStatsForSummonerID:(long)summonerID withAPIKey:(NSString*)key region:(RGRegion*)region success:(void (^)(RankedStats *))success failure:(void (^)(NSError *))failure {
    [[StatsService new] getRankedStatsForSummonerID:summonerID season:nil withAPIKey:key region:region success:success failure:failure];
}

- (void)getRankedStatsForSummonerID:(long)summonerID season:(NSString*)season withAPIKey:(NSString *)key region:(RGRegion *)region success:(void (^)(RankedStats *))success failure:(void (^)(NSError *))failure {
    [[StatsService new] getRankedStatsForSummonerID:summonerID season:season withAPIKey:key region:region success:success failure:failure];
}

- (void)getSummaryStatsForSummonerID:(long)summonerID withAPIKey:(NSString*)key region:(RGRegion*)region success:(void (^)(PlayerStatsSummaryList *))success failure:(void (^)(NSError *))failure {
    [[StatsService new] getSummaryStatsForSummonerID:summonerID season:nil withAPIKey:key region:region success:success failure:failure];
}

- (void)getSummaryStatsForSummonerID:(long)summonerID season:(NSString*)season withAPIKey:(NSString *)key region:(RGRegion *)region success:(void (^)(PlayerStatsSummaryList *))success failure:(void (^)(NSError *))failure {
    [[StatsService new] getSummaryStatsForSummonerID:summonerID season:season withAPIKey:key region:region success:success failure:failure];
}

- (void)getSummonersForSummonerNames:(NSArray*)summonerNames withAPIKey:(NSString*)key region:(RGRegion*)region success:(void (^)(NSDictionary *))success failure:(void (^)(NSError *))failure {
    [[SummonerService new] getSummonersForSummonerNames:summonerNames withAPIKey:key region:region success:success failure:failure];
}

- (void)getSummonersForSummonerIDs:(NSArray*)summonerIDs withAPIKey:(NSString*)key region:(RGRegion*)region success:(void (^)(NSDictionary *))success failure:(void (^)(NSError *))failure {
    [[SummonerService new] getSummonersForSummonerIDs:summonerIDs withAPIKey:key region:region success:success failure:failure];
}

- (void)getSummonerMasteriesForSummonerIDs:(NSArray*)summonerIDs withAPIKey:(NSString*)key region:(RGRegion*)region success:(void (^)(NSDictionary *))success failure:(void (^)(NSError *))failure {
    [[SummonerService new] getSummonerMasteriesForSummonerIDs:summonerIDs withAPIKey:key region:region success:success failure:failure];
}

- (void)getSummonerNamesForSummonerIDs:(NSArray*)summonerIDs withAPIKey:(NSString*)key region:(RGRegion*)region success:(void (^)(NSDictionary *))success failure:(void (^)(NSError *))failure {
    [[SummonerService new] getSummonerNamesForSummonerIDs:summonerIDs withAPIKey:key region:region success:success failure:failure];
}

- (void)getSummonerRunesForSummonerIDs:(NSArray*)summonerIDs withAPIKey:(NSString*)key region:(RGRegion*)region success:(void (^)(NSDictionary *))success failure:(void (^)(NSError *))failure {
    [[SummonerService new] getSummonerRunesForSummonerIDs:summonerIDs withAPIKey:key region:region success:success failure:failure];
}

- (void)getTeamsForSummonerIDs:(NSArray*)summonerIDs withAPIKey:(NSString*)key region:(RGRegion*)region success:(void (^)(NSDictionary *))success failure:(void (^)(NSError *))failure {
    [[TeamService new] getTeamsForSummonerIDs:summonerIDs withAPIKey:key region:region success:success failure:failure];
}

- (void)getTeamsForTeamIDs:(NSArray*)teamIDs withAPIKey:(NSString*)key region:(RGRegion*)region success:(void (^)(NSDictionary *))success failure:(void (^)(NSError *))failure {
    [[TeamService new] getTeamsForTeamIDs:teamIDs withAPIKey:key region:region success:success failure:failure];
}


@end
