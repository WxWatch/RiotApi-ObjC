//
//  MatchHistoryService.m
//  RiotAPI
//
//  Created by James Glenn on 6/12/15.
//  Copyright (c) 2015 James Glenn. All rights reserved.
//

#import "MatchHistoryService.h"

@implementation MatchHistoryService

- (void)getMatchHistoryForSummonerID:(long)summonerID championIDs:(NSArray*)championIDs rankedQueues:(NSArray*)rankedQueues beginIndex:(NSInteger)beginIndex endIndex:(NSInteger)endIndex withAPIKey:(NSString *)key region:(RGRegion *)region success:(void (^)(PlayerHistory *))success failure:(void (^)(NSError *))failure {
    NSString *endpoint = [NSString stringWithFormat:@"%ld", summonerID];
    
    NSMutableDictionary *params = [NSMutableDictionary new];
    if (championIDs) [params setObject:championIDs forKey:@"championIds"];
    if (rankedQueues) [params setObject:rankedQueues forKey:@"rankedQueues"];
    if (beginIndex != NSIntegerMax) [params setObject:@(beginIndex) forKey:@"beginIndex"];
    if (endIndex != NSIntegerMax) [params setObject:@(endIndex) forKey:@"endIndex"];

    [self fireServiceWithRegion:region endpoint:endpoint params:params success:^(id response) {
        PlayerHistory *history = [PlayerHistory objectWithDictionary:response];
        success(history);
    } failure:failure];
}

- (NSString *)versionURL {
    return @"/api/lol/%@/v2.2/matchhistory/";
}

- (BOOL)isGlobal {
    return NO;
}

- (NSString *)baseURL {
    return nil;
}

@end
