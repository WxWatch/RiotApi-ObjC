//
//  LeagueService.m
//  RiotAPI
//
//  Created by James Glenn on 6/10/15.
//  Copyright (c) 2015 James Glenn. All rights reserved.
//

#import "LeagueService.h"

@implementation LeagueService

- (void)getLeaguesForSummonerIDs:(NSArray*)summonerIDs region:(RGRegion*)region success:(void (^)(NSDictionary *))success failure:(void (^)(NSError *))failure {
    [self fireServiceWithRegion:region endpoint:@"by-summoner/" paramArray:summonerIDs success:success failure:failure];
}

- (void)getLeagueEntriesForSummonerIDs:(NSArray*)summonerIDs region:(RGRegion*)region success:(void (^)(NSDictionary *))success failure:(void (^)(NSError *))failure {
    NSString *endpoint = [self appendArray:summonerIDs toURLString:@"by-summoner/"];
    endpoint = [NSString stringWithFormat:@"%@/entry", endpoint];
    [self fireServiceWithRegion:region endpoint:endpoint params:nil success:success failure:failure];
}

- (void)getLeaguesForTeamIDs:(NSArray*)teamIDs region:(RGRegion*)region success:(void (^)(NSDictionary *))success failure:(void (^)(NSError *))failure {
    [self fireServiceWithRegion:region endpoint:@"by-team/" paramArray:teamIDs success:success failure:failure];
}

- (void)getLeagueEntriesForTeamIDs:(NSArray*)teamIDs region:(RGRegion*)region success:(void (^)(NSDictionary *))success failure:(void (^)(NSError *))failure {
    NSString *endpoint = [self appendArray:teamIDs toURLString:@"by-summoner/"];
    endpoint = [NSString stringWithFormat:@"%@/entry", endpoint];
    [self fireServiceWithRegion:region endpoint:endpoint params:nil success:success failure:failure];
}

- (void)getChallengerLeagueWithQueueType:(NSString*)queueType region:(RGRegion*)region success:(void (^)(League *))success failure:(void (^)(NSError *))failure {
    NSDictionary *params = @{ @"type": queueType };
    [self fireServiceWithRegion:region endpoint:@"challenger" params:params success:^(id response) {
        League *league = [League objectWithDictionary:response];
        success(league);
    } failure:failure];
}

- (void)getMasterLeagueWithQueueType:(NSString*)queueType region:(RGRegion*)region success:(void (^)(League *))success failure:(void (^)(NSError *))failure {
    NSDictionary *params = @{ @"type": queueType };
    [self fireServiceWithRegion:region endpoint:@"master" params:params success:^(id response) {
        League *league = [League objectWithDictionary:response];
        success(league);
    } failure:failure];
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
