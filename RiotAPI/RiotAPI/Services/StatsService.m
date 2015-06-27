//
//  StatsService.m
//  RiotAPI
//
//  Created by James Glenn on 6/12/15.
//  Copyright (c) 2015 James Glenn. All rights reserved.
//

#import "StatsService.h"

@implementation StatsService

- (void)getRankedStatsForSummonerID:(long)summonerID season:(NSString*)season region:(RGRegion *)region success:(void (^)(RankedStats *))success failure:(void (^)(NSError *))failure {
    NSString *endpoint = [NSString stringWithFormat:@"by-summoner/%ld/ranked", summonerID];
    
    NSMutableDictionary *params = [NSMutableDictionary new];
    if (season) [params setObject:season forKey:@"season"];
    
    [self fireServiceWithRegion:region endpoint:endpoint params:params success:^(id response) {
        RankedStats *stats = [RankedStats objectWithDictionary:response];
        success(stats);
    } failure:failure];
}

- (void)getSummaryStatsForSummonerID:(long)summonerID season:(NSString*)season region:(RGRegion *)region success:(void (^)(PlayerStatsSummaryList *))success failure:(void (^)(NSError *))failure {
    NSString *endpoint = [NSString stringWithFormat:@"by-summoner/%ld/summary", summonerID];
    
    NSMutableDictionary *params = [NSMutableDictionary new];
    if (season) [params setObject:season forKey:@"season"];
    
    [self fireServiceWithRegion:region endpoint:endpoint params:params success:^(id response) {
        PlayerStatsSummaryList *list = [PlayerStatsSummaryList objectWithDictionary:response];
        success(list);
    } failure:failure];
}

- (NSString *)versionURL {
    return @"/api/lol/%@/v1.3/stats/";
}

- (BOOL)isGlobal {
    return NO;
}

- (NSString *)baseURL {
    return nil;
}

@end
