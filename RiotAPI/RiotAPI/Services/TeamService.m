//
//  TeamService.m
//  RiotAPI
//
//  Created by James Glenn on 6/12/15.
//  Copyright (c) 2015 James Glenn. All rights reserved.
//

#import "TeamService.h"

@implementation TeamService

- (void)getTeamsForSummonerIDs:(NSArray*)summonerIDs withAPIKey:(NSString*)key region:(RGRegion*)region success:(void (^)(NSDictionary *))success failure:(void (^)(NSError *))failure {
    NSString *endpoint = [NSString stringWithFormat:@"by-summoner/%@", [self commaSeperatedStringForArray:summonerIDs]];
    [self fireServiceWithRegion:region endpoint:endpoint params:nil success:success failure:failure];
}

- (void)getTeamsForTeamIDs:(NSArray*)teamIDs withAPIKey:(NSString*)key region:(RGRegion*)region success:(void (^)(NSDictionary *))success failure:(void (^)(NSError *))failure {
    NSString *endpoint = [self commaSeperatedStringForArray:teamIDs];
    [self fireServiceWithRegion:region endpoint:endpoint params:nil success:success failure:failure];
}


- (NSString *)versionURL {
    return @"/api/lol/%@/v2.4/team/";
}

- (BOOL)isGlobal {
    return NO;
}

- (NSString *)baseURL {
    return nil;
}

@end
