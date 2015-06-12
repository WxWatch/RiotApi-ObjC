//
//  SummonerService.h
//  RiotAPI
//
//  Created by James Glenn on 6/12/15.
//  Copyright (c) 2015 James Glenn. All rights reserved.
//

#import "BaseService.h"

@interface SummonerService : BaseService

- (void)getSummonersForSummonerNames:(NSArray*)summonerNames withAPIKey:(NSString*)key region:(RGRegion*)region success:(void (^)(NSDictionary *))success failure:(void (^)(NSError *))failure;
- (void)getSummonersForSummonerIDs:(NSArray*)summonerIDs withAPIKey:(NSString*)key region:(RGRegion*)region success:(void (^)(NSDictionary *))success failure:(void (^)(NSError *))failure;
- (void)getSummonerMasteriesForSummonerIDs:(NSArray*)summonerIDs withAPIKey:(NSString*)key region:(RGRegion*)region success:(void (^)(NSDictionary *))success failure:(void (^)(NSError *))failure;
- (void)getSummonerNamesForSummonerIDs:(NSArray*)summonerIDs withAPIKey:(NSString*)key region:(RGRegion*)region success:(void (^)(NSDictionary *))success failure:(void (^)(NSError *))failure;
- (void)getSummonerRunesForSummonerIDs:(NSArray*)summonerIDs withAPIKey:(NSString*)key region:(RGRegion*)region success:(void (^)(NSDictionary *))success failure:(void (^)(NSError *))failure;

@end
