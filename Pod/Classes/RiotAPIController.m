//
//  RiotAPIManager.m
//  RiotAPI
//
//  Created by James Glenn on 5/19/15.
//  Copyright (c) 2015 James Glenn. All rights reserved.
//

#import "RiotAPIController.h"
#import "Services.h"
#import <Lockbox/Lockbox.h>
#import "NSUserDefaults+RiotAPI.h"

@implementation RiotAPIController

+ (instancetype)sharedController {
    static RiotAPIController *sharedController = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedController = [[self alloc] init];
    });
    return sharedController;
}

- (BOOL)initializeWithAPIKey:(NSString*)apiKey {
    [self setupDefaults];
    [Lockbox setString:apiKey forKey:@"com.wxwatch.riotapi.apikey"];
    
    return YES;
}

- (BOOL)initializeWithBaseURLString:(NSString*)baseURLString {
    [self setupDefaults];
    [NSUserDefaults setUsesCustomURL:YES];
    [NSUserDefaults setCustomURLString:baseURLString];
    return YES;
}

- (void)setupDefaults {
    [NSUserDefaults setUsesCustomURL:NO];
    [NSUserDefaults setCustomURLString:@""];
}

- (void)getChampionsregion:(RGRegion*)region success:(void (^)(MetaChampionList *))success failure:(void (^)(NSError *))failure {
    [[ChampionService new] getChampionsregion:region success:success failure:failure];
}

- (void)getChampionsFreeToPlay:(BOOL)freeToPlay region:(RGRegion*)region success:(void (^)(MetaChampionList *))success failure:(void (^)(NSError *))failure {
    [[ChampionService new] getChampionsFreeToPlay:freeToPlay region:region success:success failure:failure];
}

- (void)getChampionByID:(NSInteger)championID region:(RGRegion*)region success:(void (^)(MetaChampion *))success failure:(void (^)(NSError *))failure {
    [[ChampionService new] getChampionByID:championID region:region success:success failure:failure];
}

- (void)getCurrentGameForSummonerID:(NSInteger)summonerID region:(RGRegion*)region success:(void (^)(CurrentGameInfo *))success failure:(void (^)(NSError *))failure {
    [[CurrentGameService new] getCurrentGameForSummonerID:summonerID region:region success:success failure:failure];
}

- (void)getFeaturedGamesregion:(RGRegion*)region success:(void (^)(FeaturedGames *))success failure:(void (^)(NSError *))failure {
    [[FeaturedGamesService new] getFeaturedGamesregion:region success:success failure:failure];
}

- (void)getRecentGamesForSummonerID:(NSInteger)summonerID region:(RGRegion*)region success:(void (^)(RecentGames *))success failure:(void (^)(NSError *))failure {
    [[GameService new] getRecentGamesForSummonerID:summonerID region:region success:success failure:failure];
}

- (void)getLeaguesForSummonerIDs:(NSArray*)summonerIDs region:(RGRegion*)region success:(void (^)(NSDictionary *))success failure:(void (^)(NSError *))failure {
    [[LeagueService new] getLeaguesForSummonerIDs:summonerIDs region:region success:success failure:failure];
}

- (void)getLeagueEntriesForSummonerIDs:(NSArray*)summonerIDs region:(RGRegion*)region success:(void (^)(NSDictionary *))success failure:(void (^)(NSError *))failure {
    [[LeagueService new] getLeagueEntriesForSummonerIDs:summonerIDs region:region success:success failure:failure];
}

- (void)getLeaguesForTeamIDs:(NSArray*)teamIDs region:(RGRegion*)region success:(void (^)(NSDictionary *))success failure:(void (^)(NSError *))failure {
    [[LeagueService new] getLeaguesForTeamIDs:teamIDs region:region success:success failure:failure];
}

- (void)getLeagueEntriesForTeamIDs:(NSArray*)teamIDs region:(RGRegion*)region success:(void (^)(NSDictionary *))success failure:(void (^)(NSError *))failure {
    [[LeagueService new] getLeagueEntriesForTeamIDs:teamIDs region:region success:success failure:failure];
}

- (void)getChallengerLeagueWithQueueType:(NSString*)queueType region:(RGRegion*)region success:(void (^)(League *))success failure:(void (^)(NSError *))failure {
    [[LeagueService new] getChallengerLeagueWithQueueType:queueType region:region success:success failure:failure];
}

- (void)getMasterLeagueWithQueueType:(NSString*)queueType region:(RGRegion*)region success:(void (^)(League *))success failure:(void (^)(NSError *))failure {
    [[LeagueService new] getMasterLeagueWithQueueType:queueType region:region success:success failure:failure];
}

- (void)getStaticChampionsregion:(RGRegion*)region success:(void (^)(StaticChampionList *))success failure:(void (^)(NSError *))failure {
    [[StaticDataService new] getStaticChampionsWithRegion:region success:success failure:failure];
}

- (void)getStaticChampionsWithLocale:(NSString*)locale version:(NSString*)version dataById:(BOOL)dataById champData:(NSString*)champData region:(RGRegion *)region success:(void (^)(StaticChampionList *))success failure:(void (^)(NSError *))failure {
    [[StaticDataService new] getStaticChampionsWithLocale:locale version:version dataById:dataById champData:champData region:region success:success failure:failure];
}

- (void)getStaticChampionByID:(NSInteger)championID region:(RGRegion*)region success:(void (^)(StaticChampion *))success failure:(void (^)(NSError *))failure {
    [[StaticDataService new] getStaticChampionByID:championID region:region success:success failure:failure];
}

- (void)getStaticChampionByID:(NSInteger)championID withLocale:(NSString*)locale version:(NSString*)version dataById:(BOOL)dataById champData:(NSString*)champData region:(RGRegion *)region success:(void (^)(StaticChampion *))success failure:(void (^)(NSError *))failure {
    [[StaticDataService new] getStaticChampionByID:championID withLocale:locale version:version dataById:dataById champData:champData region:region success:success failure:failure];
}

- (void)getStaticItemsregion:(RGRegion*)region success:(void (^)(StaticItemList *))success failure:(void (^)(NSError *))failure {
    [[StaticDataService new] getStaticItemsregion:region success:success failure:failure];
}

- (void)getStaticItemsWithLocale:(NSString*)locale version:(NSString*)version itemListData:(NSString*)itemListData region:(RGRegion *)region success:(void (^)(StaticItemList *))success failure:(void (^)(NSError *))failure {
    [[StaticDataService new] getStaticItemsWithLocale:locale version:version itemListData:itemListData region:region success:success failure:failure];
}

- (void)getStaticItemByID:(NSInteger)itemID region:(RGRegion*)region success:(void (^)(StaticItem *))success failure:(void (^)(NSError *))failure {
    [[StaticDataService new] getStaticItemByID:itemID region:region success:success failure:failure];
}

- (void)getStaticItemByID:(NSInteger)itemID withLocale:(NSString*)locale version:(NSString*)version itemListData:(NSString*)itemListData region:(RGRegion *)region success:(void (^)(StaticItem *))success failure:(void (^)(NSError *))failure {
    [[StaticDataService new] getStaticItemByID:itemID withLocale:locale version:version itemListData:itemListData region:region success:success failure:failure];
}

- (void)getLanguageStringsregion:(RGRegion*)region success:(void (^)(StaticLanguageStrings *))success failure:(void (^)(NSError *))failure {
    [[StaticDataService new] getLanguageStringsregion:region success:success failure:failure];
}

- (void)getLanguageStringsWithLocale:(NSString*)locale version:(NSString*)version region:(RGRegion *)region success:(void (^)(StaticLanguageStrings *))success failure:(void (^)(NSError *))failure {
    [[StaticDataService new] getLanguageStringsWithLocale:locale version:version region:region success:success failure:failure];
}

- (void)getLanguagesregion:(RGRegion*)region success:(void (^)(NSArray *))success failure:(void (^)(NSError *))failure {
    [[StaticDataService new] getLanguagesregion:region success:success failure:failure];
}

- (void)getMapregion:(RGRegion*)region success:(void (^)(StaticMapData *))success failure:(void (^)(NSError *))failure {
    [[StaticDataService new] getMapregion:region success:success failure:failure];
}

- (void)getMapWithLocale:(NSString*)locale version:(NSString*)version region:(RGRegion *)region success:(void (^)(StaticMapData *))success failure:(void (^)(NSError *))failure {
    [[StaticDataService new] getMapWithLocale:locale version:version region:region success:success failure:failure];
}

- (void)getStaticMasteriesregion:(RGRegion*)region success:(void (^)(StaticMasteryList *))success failure:(void (^)(NSError *))failure {
    [[StaticDataService new] getStaticMasteriesregion:region success:success failure:failure];
}

- (void)getStaticMasteriesWithLocale:(NSString*)locale version:(NSString*)version masteryListData:(NSString*)masteryListData region:(RGRegion *)region success:(void (^)(StaticMasteryList *))success failure:(void (^)(NSError *))failure {
    [[StaticDataService new] getStaticMasteriesWithLocale:locale version:version masteryListData:masteryListData region:region success:success failure:failure];
}

- (void)getStaticMasteryByID:(NSInteger)masteryID region:(RGRegion*)region success:(void (^)(StaticMastery *))success failure:(void (^)(NSError *))failure {
    [[StaticDataService new] getStaticMasteryByID:masteryID region:region success:success failure:failure];
}

- (void)getStaticMasteryByID:(NSInteger)masteryID withLocale:(NSString*)locale version:(NSString*)version masteryListData:(NSString*)masteryListData region:(RGRegion *)region success:(void (^)(StaticMastery *))success failure:(void (^)(NSError *))failure {
    [[StaticDataService new] getStaticMasteryByID:masteryID withLocale:locale version:version masteryListData:masteryListData region:region success:success failure:failure];
}

- (void)getStaticRealmregion:(RGRegion*)region success:(void (^)(StaticRealm *))success failure:(void (^)(NSError *))failure {
    [[StaticDataService new] getStaticRealmregion:region success:success failure:failure];
}

- (void)getStaticRunesregion:(RGRegion*)region success:(void (^)(StaticRuneList *))success failure:(void (^)(NSError *))failure {
    [[StaticDataService new] getStaticRunesregion:region success:success failure:failure];
}

- (void)getStaticRunesWithLocale:(NSString*)locale version:(NSString*)version runeListData:(NSString*)runeListData region:(RGRegion *)region success:(void (^)(StaticRuneList *))success failure:(void (^)(NSError *))failure {
    [[StaticDataService new] getStaticRunesWithLocale:locale version:version runeListData:runeListData region:region success:success failure:failure];
}

- (void)getStaticRuneByID:(NSInteger)runeID region:(RGRegion*)region success:(void (^)(StaticRune *))success failure:(void (^)(NSError *))failure {
    [[StaticDataService new] getStaticRuneByID:runeID region:region success:success failure:failure];
}

- (void)getStaticRuneByID:(NSInteger)runeID withLocale:(NSString*)locale version:(NSString*)version runeListData:(NSString*)runeListData region:(RGRegion *)region success:(void (^)(StaticRune *))success failure:(void (^)(NSError *))failure {
    [[StaticDataService new] getStaticRuneByID:runeID withLocale:locale version:version runeListData:runeListData region:region success:success failure:failure];
}

- (void)getStaticSummonerSpellsregion:(RGRegion*)region success:(void (^)(StaticSummonerSpellList *))success failure:(void (^)(NSError *))failure {
    [[StaticDataService new] getStaticSummonerSpellsregion:region success:success failure:failure];
}

- (void)getStaticSummonerSpellsWithLocale:(NSString*)locale version:(NSString*)version dataById:(BOOL)dataById spellData:(NSString*)spellData region:(RGRegion *)region success:(void (^)(StaticSummonerSpellList *))success failure:(void (^)(NSError *))failure {
    [[StaticDataService new] getStaticSummonerSpellsWithLocale:locale version:version dataById:dataById spellData:spellData region:region success:success failure:failure];
}

- (void)getStaticSummonerSpellByID:(NSInteger)summonerSpellID region:(RGRegion*)region success:(void (^)(StaticSummonerSpell *))success failure:(void (^)(NSError *))failure {
    [[StaticDataService new] getStaticSummonerSpellByID:summonerSpellID region:region success:success failure:failure];
}

- (void)getStaticSummonerSpellByID:(NSInteger)summonerSpellID withLocale:(NSString*)locale version:(NSString*)version dataById:(BOOL)dataById spellData:(NSString*)spellData region:(RGRegion *)region success:(void (^)(StaticSummonerSpell *))success failure:(void (^)(NSError *))failure {
    [[StaticDataService new] getStaticSummonerSpellByID:summonerSpellID withLocale:locale version:version dataById:dataById spellData:spellData region:region success:success failure:failure];
}

- (void)getVersionregion:(RGRegion*)region success:(void (^)(NSArray *))success failure:(void (^)(NSError *))failure {
    [[StaticDataService new] getVersionregion:region success:success failure:failure];
}

- (void)getShardsWithSuccess:(void (^)(NSArray *))success failure:(void (^)(NSError *))failure {
    [[StatusService new] getShardsWithSuccess:success failure:failure];
}

- (void)getShardsForRegion:(RGRegion*)region success:(void (^)(ShardStatus *))success failure:(void (^)(NSError *))failure {
    [[StatusService new] getShardsForRegion:region success:success failure:failure];
}

- (void)getMatchForMatchID:(long)matchID region:(RGRegion*)region success:(void (^)(MatchDetail *))success failure:(void (^)(NSError *))failure {
    [[MatchService new] getMatchForMatchID:matchID includeTimeline:NO region:region success:success failure:failure];
}

- (void)getMatchForMatchID:(long)matchID includeTimeline:(BOOL)includeTimeine region:(RGRegion *)region success:(void (^)(MatchDetail *))success failure:(void (^)(NSError *))failure {
    [[MatchService new] getMatchForMatchID:matchID includeTimeline:includeTimeine region:region success:success failure:failure];
}

- (void)getMatchHistoryForSummonerID:(long)summonerID region:(RGRegion*)region success:(void (^)(PlayerHistory *))success failure:(void (^)(NSError *))failure {
    [[MatchHistoryService new] getMatchHistoryForSummonerID:summonerID championIDs:nil rankedQueues:nil beginIndex:NSIntegerMax endIndex:NSIntegerMax region:region success:success failure:failure];
}

- (void)getMatchHistoryForSummonerID:(long)summonerID championIDs:(NSArray*)championIDs rankedQueues:(NSArray*)rankedQueues beginIndex:(NSInteger)beginIndex endIndex:(NSInteger)endIndex region:(RGRegion *)region success:(void (^)(PlayerHistory *))success failure:(void (^)(NSError *))failure {
    [[MatchHistoryService new] getMatchHistoryForSummonerID:summonerID championIDs:championIDs rankedQueues:rankedQueues beginIndex:beginIndex endIndex:endIndex region:region success:success failure:failure];
}

- (void)getRankedStatsForSummonerID:(long)summonerID region:(RGRegion*)region success:(void (^)(RankedStats *))success failure:(void (^)(NSError *))failure {
    [[StatsService new] getRankedStatsForSummonerID:summonerID season:nil region:region success:success failure:failure];
}

- (void)getRankedStatsForSummonerID:(long)summonerID season:(NSString*)season region:(RGRegion *)region success:(void (^)(RankedStats *))success failure:(void (^)(NSError *))failure {
    [[StatsService new] getRankedStatsForSummonerID:summonerID season:season region:region success:success failure:failure];
}

- (void)getSummaryStatsForSummonerID:(long)summonerID region:(RGRegion*)region success:(void (^)(PlayerStatsSummaryList *))success failure:(void (^)(NSError *))failure {
    [[StatsService new] getSummaryStatsForSummonerID:summonerID season:nil region:region success:success failure:failure];
}

- (void)getSummaryStatsForSummonerID:(long)summonerID season:(NSString*)season region:(RGRegion *)region success:(void (^)(PlayerStatsSummaryList *))success failure:(void (^)(NSError *))failure {
    [[StatsService new] getSummaryStatsForSummonerID:summonerID season:season region:region success:success failure:failure];
}

- (void)getSummonersForSummonerNames:(NSArray*)summonerNames region:(RGRegion*)region success:(void (^)(NSDictionary *))success failure:(void (^)(NSError *))failure {
    [[SummonerService new] getSummonersForSummonerNames:summonerNames region:region success:success failure:failure];
}

- (void)getSummonersForSummonerIDs:(NSArray*)summonerIDs region:(RGRegion*)region success:(void (^)(NSDictionary *))success failure:(void (^)(NSError *))failure {
    [[SummonerService new] getSummonersForSummonerIDs:summonerIDs region:region success:success failure:failure];
}

- (void)getSummonerMasteriesForSummonerIDs:(NSArray*)summonerIDs region:(RGRegion*)region success:(void (^)(NSDictionary *))success failure:(void (^)(NSError *))failure {
    [[SummonerService new] getSummonerMasteriesForSummonerIDs:summonerIDs region:region success:success failure:failure];
}

- (void)getSummonerNamesForSummonerIDs:(NSArray*)summonerIDs region:(RGRegion*)region success:(void (^)(NSDictionary *))success failure:(void (^)(NSError *))failure {
    [[SummonerService new] getSummonerNamesForSummonerIDs:summonerIDs region:region success:success failure:failure];
}

- (void)getSummonerRunesForSummonerIDs:(NSArray*)summonerIDs region:(RGRegion*)region success:(void (^)(NSDictionary *))success failure:(void (^)(NSError *))failure {
    [[SummonerService new] getSummonerRunesForSummonerIDs:summonerIDs region:region success:success failure:failure];
}

- (void)getTeamsForSummonerIDs:(NSArray*)summonerIDs region:(RGRegion*)region success:(void (^)(NSDictionary *))success failure:(void (^)(NSError *))failure {
    [[TeamService new] getTeamsForSummonerIDs:summonerIDs region:region success:success failure:failure];
}

- (void)getTeamsForTeamIDs:(NSArray*)teamIDs region:(RGRegion*)region success:(void (^)(NSDictionary *))success failure:(void (^)(NSError *))failure {
    [[TeamService new] getTeamsForTeamIDs:teamIDs region:region success:success failure:failure];
}


@end
