//
//  MatchListService.m
//  Pods
//
//  Created by James Glenn on 7/28/15.
//
//

#import "MatchListService.h"

@implementation MatchListService

- (void)getMatchListForSummonerID:(long)summonerID region:(RGRegion*)region success:(void (^)(MatchList *matchList))success failure:(void (^)(NSError *error))failure {
    [self getMatchListForSummonerID:summonerID region:region championIDs:nil rankedQueues:nil seasons:nil beginTime:-1 endTime:-1 beginIndex:NSIntegerMax endIndex:NSIntegerMax success:success failure:failure];
}

- (void)getMatchListForSummonerID:(long)summonerID region:(RGRegion*)region beginTime:(long)beginTime endTime:(long)endTime success:(void (^)(MatchList *matchList))success failure:(void (^)(NSError *error))failure {
    [self getMatchListForSummonerID:summonerID region:region championIDs:nil rankedQueues:nil seasons:nil beginTime:beginTime endTime:endTime beginIndex:NSIntegerMax endIndex:NSIntegerMax success:success failure:failure];
}

- (void)getMatchListForSummonerID:(long)summonerID region:(RGRegion*)region beginIndex:(NSInteger)beginIndex endIndex:(NSInteger)endIndex success:(void (^)(MatchList *matchList))success failure:(void (^)(NSError *error))failure {
    [self getMatchListForSummonerID:summonerID region:region championIDs:nil rankedQueues:nil seasons:nil beginTime:-1 endTime:-1 beginIndex:beginIndex endIndex:endIndex success:success failure:failure];
}

- (void)getMatchListForSummonerID:(long)summonerID region:(RGRegion*)region championIDs:(NSArray*)championIDs rankedQueues:(NSArray*)rankedQueues seasons:(NSArray*)seasons beginTime:(long)beginTime endTime:(long)endTime beginIndex:(NSInteger)beginIndex endIndex:(NSInteger)endIndex success:(void (^)(MatchList *matchList))success failure:(void (^)(NSError *error))failure {
    
    NSString *endpoint = [NSString stringWithFormat:@"by-summoner/%ld", summonerID];
    
    NSMutableDictionary *params = [NSMutableDictionary new];
    if (championIDs) [params setObject:[self commaSeperatedStringForArray:championIDs] forKey:@"championIds"];
    if (rankedQueues) [params setObject:[self commaSeperatedStringForArray:rankedQueues] forKey:@"rankedQueues"];
    if (seasons) [params setObject:[self commaSeperatedStringForArray:seasons] forKey:@"seasons"];
    if (beginTime != -1) [params setObject:@(beginTime) forKey:@"beginTime"];
    if (endTime != -1) [params setObject:@(endTime) forKey:@"endTime"];
    if (beginIndex != NSIntegerMax) [params setObject:@(beginIndex) forKey:@"beginIndex"];
    if (endIndex != NSIntegerMax) [params setObject:@(endIndex) forKey:@"endIndex"];
    
    [self fireServiceWithRegion:region endpoint:endpoint params:params success:^(id response) {
        MatchList *list = [MatchList objectWithDictionary:response];
        success(list);
    } failure:failure];
}


- (NSString *)versionURL {
    return @"/api/lol/%@/v2.2/matchlist/";
}

- (BOOL)isGlobal {
    return NO;
}

- (NSString *)baseURL {
    return nil;
}

@end
