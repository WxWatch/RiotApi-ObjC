//
//  LeagueService.h
//  RiotAPI
//
//  Created by James Glenn on 6/10/15.
//  Copyright (c) 2015 James Glenn. All rights reserved.
//

#import "BaseService.h"
#import "League.h"

@interface LeagueService : BaseService

- (void)getLeaguesForSummonerIDs:(NSArray*)summonerIDs region:(RGRegion*)region success:(void (^)(NSDictionary *))success failure:(void (^)(NSError *))failure;
- (void)getLeagueEntriesForSummonerIDs:(NSArray*)summonerIDs region:(RGRegion*)region success:(void (^)(NSDictionary *))success failure:(void (^)(NSError *))failure;
- (void)getLeaguesForTeamIDs:(NSArray*)teamIDs region:(RGRegion*)region success:(void (^)(NSDictionary *))success failure:(void (^)(NSError *))failure;
- (void)getLeagueEntriesForTeamIDs:(NSArray*)teamIDs region:(RGRegion*)region success:(void (^)(NSDictionary *))success failure:(void (^)(NSError *))failure;
- (void)getChallengerLeagueWithQueueType:(NSString*)queueType region:(RGRegion*)region success:(void (^)(League *))success failure:(void (^)(NSError *))failure;
- (void)getMasterLeagueWithQueueType:(NSString*)queueType region:(RGRegion*)region success:(void (^)(League *))success failure:(void (^)(NSError *))failure;

@end
