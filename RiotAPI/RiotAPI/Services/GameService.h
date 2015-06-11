//
//  GameService.h
//  RiotAPI
//
//  Created by James Glenn on 6/10/15.
//  Copyright (c) 2015 James Glenn. All rights reserved.
//

#import "BaseService.h"
#import "RecentGames.h"

@interface GameService : BaseService

- (void)getRecentGamesForSummonerID:(NSInteger)summonerID withAPIKey:(NSString*)key region:(RGRegion*)region success:(void (^)(RecentGames *))success failure:(void (^)(NSError *))failure;

@end
