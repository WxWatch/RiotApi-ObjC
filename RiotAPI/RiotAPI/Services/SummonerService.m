//
//  SummonerService.m
//  RiotAPI
//
//  Created by James Glenn on 6/12/15.
//  Copyright (c) 2015 James Glenn. All rights reserved.
//

#import "SummonerService.h"

@implementation SummonerService

- (void)getSummonersForSummonerNames:(NSArray*)summonerNames withAPIKey:(NSString*)key region:(RGRegion*)region success:(void (^)(NSDictionary *))success failure:(void (^)(NSError *))failure {
    NSString *endpoint = [NSString stringWithFormat:@"by-name/%@", [self commaSeperatedStringForArray:summonerNames]];
    [self fireServiceWithRegion:region endpoint:endpoint params:nil success:success failure:failure];
}

- (void)getSummonersForSummonerIDs:(NSArray*)summonerIDs withAPIKey:(NSString*)key region:(RGRegion*)region success:(void (^)(NSDictionary *))success failure:(void (^)(NSError *))failure {
    NSString *endpoint = [NSString stringWithFormat:@"%@", [self commaSeperatedStringForArray:summonerIDs]];
    [self fireServiceWithRegion:region endpoint:endpoint params:nil success:success failure:failure];
}

- (void)getSummonerMasteriesForSummonerIDs:(NSArray*)summonerIDs withAPIKey:(NSString*)key region:(RGRegion*)region success:(void (^)(NSDictionary *))success failure:(void (^)(NSError *))failure {
    NSString *endpoint = [NSString stringWithFormat:@"%@/masteries", [self commaSeperatedStringForArray:summonerIDs]];
    [self fireServiceWithRegion:region endpoint:endpoint params:nil success:success failure:failure];
}

- (void)getSummonerNamesForSummonerIDs:(NSArray*)summonerIDs withAPIKey:(NSString*)key region:(RGRegion*)region success:(void (^)(NSDictionary *))success failure:(void (^)(NSError *))failure {
    NSString *endpoint = [NSString stringWithFormat:@"%@/name", [self commaSeperatedStringForArray:summonerIDs]];
    [self fireServiceWithRegion:region endpoint:endpoint params:nil success:success failure:failure];
}

- (void)getSummonerRunesForSummonerIDs:(NSArray*)summonerIDs withAPIKey:(NSString*)key region:(RGRegion*)region success:(void (^)(NSDictionary *))success failure:(void (^)(NSError *))failure {
    NSString *endpoint = [NSString stringWithFormat:@"%@/runes", [self commaSeperatedStringForArray:summonerIDs]];
    [self fireServiceWithRegion:region endpoint:endpoint params:nil success:success failure:failure];
}

- (NSString *)versionURL {
    return @"/api/lol/%@/v1.4/summoner/";
}

- (BOOL)isGlobal {
    return NO;
}

- (NSString *)baseURL {
    return nil;
}

@end
