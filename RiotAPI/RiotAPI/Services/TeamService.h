//
//  TeamService.h
//  RiotAPI
//
//  Created by James Glenn on 6/12/15.
//  Copyright (c) 2015 James Glenn. All rights reserved.
//

#import "BaseService.h"

@interface TeamService : BaseService

- (void)getTeamsForSummonerIDs:(NSArray*)summonerIDs withAPIKey:(NSString*)key region:(RGRegion*)region success:(void (^)(NSDictionary *))success failure:(void (^)(NSError *))failure;
- (void)getTeamsForTeamIDs:(NSArray*)teamIDs withAPIKey:(NSString*)key region:(RGRegion*)region success:(void (^)(NSDictionary *))success failure:(void (^)(NSError *))failure;

@end
