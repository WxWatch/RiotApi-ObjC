//
//  RiotAPIManager.h
//  RiotAPI
//
//  Created by James Glenn on 5/19/15.
//  Copyright (c) 2015 James Glenn. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Endpoint.h"
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

@interface RiotAPIController : NSObject

///Class Methods

///Champion
+ (void)getChampionsWithAPIKey:(NSString*)key regionEndpoint:(Endpoint*)endpoint success:(void (^)(MetaChampionList *))success failure:(void (^)(NSError *))failure;
+ (void)getChampionsFreeToPlay:(BOOL)freeToPlay withAPIKey:(NSString*)key regionEndpoint:(Endpoint*)endpoint success:(void (^)(MetaChampionList *))success failure:(void (^)(NSError *))failure;
+ (void)getChampionByID:(NSInteger)championID withAPIKey:(NSString*)key regionEndpoint:(Endpoint*)endpoint success:(void (^)(MetaChampion *))success failure:(void (^)(NSError *))failure;

///Current Game
+ (void)getCurrentGameForSummonerID:(NSInteger)summonerID withAPIKey:(NSString*)key regionEndpoint:(Endpoint*)endpoint success:(void (^)(CurrentGameInfo *))success failure:(void (^)(NSError *))failure;
+ (void)getFeaturedGamesWithAPIKey:(NSString*)key regionEndpoint:(Endpoint*)endpoint success:(void (^)(FeaturedGames *))success failure:(void (^)(NSError *))failure;


///Game
+ (void)getRecentGamesForSummonerID:(NSInteger)summonerID withAPIKey:(NSString*)key regionEndpoint:(Endpoint*)endpoint success:(void (^)(RecentGames *))success failure:(void (^)(NSError *))failure;

///League
+ (void)getLeaguesForSummonerIDs:(NSArray*)summonerIDs withAPIKey:(NSString*)key regionEndpoint:(Endpoint*)endpoint success:(void (^)(NSDictionary *))success failure:(void (^)(NSError *))failure;
+ (void)getLeagueEntriesForSummonerIDs:(NSArray*)summonerIDs withAPIKey:(NSString*)key regionEndpoint:(Endpoint*)endpoint success:(void (^)(NSDictionary *))success failure:(void (^)(NSError *))failure;
+ (void)getLeaguesForTeamIDs:(NSArray*)teamIDs withAPIKey:(NSString*)key regionEndpoint:(Endpoint*)endpoint success:(void (^)(NSDictionary *))success failure:(void (^)(NSError *))failure;
+ (void)getLeagueEntriesForTeamIDs:(NSArray*)teamIDs withAPIKey:(NSString*)key regionEndpoint:(Endpoint*)endpoint success:(void (^)(NSDictionary *))success failure:(void (^)(NSError *))failure;
+ (void)getChallengerLeagueWithAPIKey:(NSString*)key regionEndpoint:(Endpoint*)endpoint success:(void (^)(League *))success failure:(void (^)(NSError *))failure;
+ (void)getMasterLeagueWithAPIKey:(NSString*)key regionEndpoint:(Endpoint*)endpoint success:(void (^)(League *))success failure:(void (^)(NSError *))failure;

///Static Data


///Status
+ (void)getShardsWithSuccess:(void (^)(NSArray *))success failure:(void (^)(NSError *))failure;
+ (void)getShardsForRegionEndpoint:(Endpoint*)endpoint success:(void (^)(ShardStatus *))success failure:(void (^)(NSError *))failure;

///Match
+ (void)getMatchForMatchID:(long)matchID withAPIKey:(NSString*)key regionEndpoint:(Endpoint*)endpoint success:(void (^)(MatchDetail *))success failure:(void (^)(NSError *))failure;
+ (void)getMatchForMatchID:(long)matchID includeTimeline:(BOOL)includeTimeine withAPIKey:(NSString *)key regionEndpoint:(Endpoint *)endpoint success:(void (^)(MatchDetail *))success failure:(void (^)(NSError *))failure;

///Match History
+ (void)getMatchHistoryForSummonerID:(long)summonerID withAPIKey:(NSString*)key regionEndpoint:(Endpoint*)endpoint success:(void (^)(PlayerHistory *))success failure:(void (^)(NSError *))failure;
+ (void)getMatchHistoryForSummonerID:(long)summonerID championIDs:(NSArray*)championIDs rankedQueues:(NSArray*)rankedQueues beginIndex:(NSInteger)beginIndex endIndex:(NSInteger)endIndex withAPIKey:(NSString *)key regionEndpoint:(Endpoint *)endpoint success:(void (^)(PlayerHistory *))success failure:(void (^)(NSError *))failure;

///Stats
+ (void)getRankedStatsForSummonerID:(long)summonerID withAPIKey:(NSString*)key regionEndpoint:(Endpoint*)endpoint success:(void (^)(RankedStats *))success failure:(void (^)(NSError *))failure;
+ (void)getRankedStatsForSummonerID:(long)summonerID season:(NSString*)season withAPIKey:(NSString *)key regionEndpoint:(Endpoint *)endpoint success:(void (^)(RankedStats *))success failure:(void (^)(NSError *))failure;
+ (void)getSummaryStatsForSummonerID:(long)summonerID withAPIKey:(NSString*)key regionEndpoint:(Endpoint*)endpoint success:(void (^)(PlayerStatsSummaryList *))success failure:(void (^)(NSError *))failure;
+ (void)getSummaryStatsForSummonerID:(long)summonerID season:(NSString*)season withAPIKey:(NSString *)key regionEndpoint:(Endpoint *)endpoint success:(void (^)(PlayerStatsSummaryList *))success failure:(void (^)(NSError *))failure;

///Summoner
+ (void)getSummonersForSummonerNames:(NSArray*)summonerNames withAPIKey:(NSString*)key regionEndpoint:(Endpoint*)endpoint success:(void (^)(NSDictionary *))success failure:(void (^)(NSError *))failure;
+ (void)getSummonersForSummonerIDs:(NSArray*)summonerIDs withAPIKey:(NSString*)key regionEndpoint:(Endpoint*)endpoint success:(void (^)(NSDictionary *))success failure:(void (^)(NSError *))failure;
+ (void)getSummonerMasteriesForSummonerIDs:(NSArray*)summonerIDs withAPIKey:(NSString*)key regionEndpoint:(Endpoint*)endpoint success:(void (^)(NSDictionary *))success failure:(void (^)(NSError *))failure;
+ (void)getSummonerNamesForSummonerIDs:(NSArray*)summonerIDs withAPIKey:(NSString*)key regionEndpoint:(Endpoint*)endpoint success:(void (^)(NSDictionary *))success failure:(void (^)(NSError *))failure;
+ (void)getSummonerRunesForSummonerIDs:(NSArray*)summonerIDs withAPIKey:(NSString*)key regionEndpoint:(Endpoint*)endpoint success:(void (^)(NSDictionary *))success failure:(void (^)(NSError *))failure;

///Team
+ (void)getTeamsForSummonerIDs:(NSArray*)summonerIDs withAPIKey:(NSString*)key regionEndpoint:(Endpoint*)endpoint success:(void (^)(NSDictionary *))success failure:(void (^)(NSError *))failure;
+ (void)getTeamsForTeamIDs:(NSArray*)teamIDs withAPIKey:(NSString*)key regionEndpoint:(Endpoint*)endpoint success:(void (^)(NSDictionary *))success failure:(void (^)(NSError *))failure;
///Instance Methods

@end
