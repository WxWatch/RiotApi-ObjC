//
//  StatsService.h
//  RiotAPI
//
//  Created by James Glenn on 6/12/15.
//  Copyright (c) 2015 James Glenn. All rights reserved.
//

#import "BaseService.h"
#import "RankedStats.h"
#import "PlayerStatsSummaryList.h"

@interface StatsService : BaseService

- (void)getRankedStatsForSummonerID:(long)summonerID season:(NSString*)season withAPIKey:(NSString *)key region:(RGRegion *)region success:(void (^)(RankedStats *))success failure:(void (^)(NSError *))failure;
- (void)getSummaryStatsForSummonerID:(long)summonerID season:(NSString*)season withAPIKey:(NSString *)key region:(RGRegion *)region success:(void (^)(PlayerStatsSummaryList *))success failure:(void (^)(NSError *))failure;

@end
