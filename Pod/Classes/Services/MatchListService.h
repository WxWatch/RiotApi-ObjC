//
//  MatchListService.h
//  Pods
//
//  Created by James Glenn on 7/28/15.
//
//

#import <RiotApi/RiotApi.h>
#import "MatchList.h"
#import "BaseService.h"

@interface MatchListService : BaseService

- (void)getMatchListForSummonerID:(long)summonerID region:(RGRegion*)region success:(void (^)(MatchList *matchList))success failure:(void (^)(NSError *error))failure;

- (void)getMatchListForSummonerID:(long)summonerID region:(RGRegion*)region beginTime:(long)beginTime endTime:(long)endTime success:(void (^)(MatchList *matchList))success failure:(void (^)(NSError *error))failure;

- (void)getMatchListForSummonerID:(long)summonerID region:(RGRegion*)region beginIndex:(NSInteger)beginIndex endIndex:(NSInteger)endIndex success:(void (^)(MatchList *matchList))success failure:(void (^)(NSError *error))failure;

- (void)getMatchListForSummonerID:(long)summonerID region:(RGRegion*)region championIDs:(NSArray*)championIDs rankedQueues:(NSArray*)rankedQueues seasons:(NSArray*)seasons beginTime:(long)beginTime endTime:(long)endTime beginIndex:(NSInteger)beginIndex endIndex:(NSInteger)endIndex success:(void (^)(MatchList *matchList))success failure:(void (^)(NSError *error))failure;

@end
