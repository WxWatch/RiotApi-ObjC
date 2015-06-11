//
//  LeagueService.m
//  RiotAPI
//
//  Created by James Glenn on 6/10/15.
//  Copyright (c) 2015 James Glenn. All rights reserved.
//

#import "LeagueService.h"

@implementation LeagueService

- (void)getLeaguesForSummonerIDs:(NSArray*)summonerIDs withAPIKey:(NSString*)key region:(RGRegion*)region success:(void (^)(NSDictionary *))success failure:(void (^)(NSError *))failure {
    [self fireServiceWithRegion:region endpoint:@"by-summoner" paramArray:summonerIDs success:success failure:failure];
}

- (void)getLeagueEntriesForSummonerIDs:(NSArray*)summonerIDs withAPIKey:(NSString*)key region:(RGRegion*)region success:(void (^)(NSDictionary *))success failure:(void (^)(NSError *))failure {
    
}

- (void)getLeaguesForTeamIDs:(NSArray*)teamIDs withAPIKey:(NSString*)key region:(RGRegion*)region success:(void (^)(NSDictionary *))success failure:(void (^)(NSError *))failure
{
    
}

- (void)getLeagueEntriesForTeamIDs:(NSArray*)teamIDs withAPIKey:(NSString*)key region:(RGRegion*)region success:(void (^)(NSDictionary *))success failure:(void (^)(NSError *))failure
{
    
}

- (void)getChallengerLeagueWithAPIKey:(NSString*)key region:(RGRegion*)region success:(void (^)(League *))success failure:(void (^)(NSError *))failure
{
    
}

- (void)getMasterLeagueWithAPIKey:(NSString*)key region:(RGRegion*)region success:(void (^)(League *))success failure:(void (^)(NSError *))failure
{
    
}

- (NSString *)versionURL {
    return @"/api/lol/%@/v2.5/league/";
}

- (BOOL)isGlobal {
    return NO;
}

- (NSString *)baseURL {
    return nil;
}

@end
