//
//  CurrentGameService.h
//  RiotAPI
//
//  Created by James Glenn on 6/10/15.
//  Copyright (c) 2015 James Glenn. All rights reserved.
//

#import "BaseService.h"
#import "CurrentGameInfo.h"

@interface CurrentGameService : BaseService

- (void)getCurrentGameForSummonerID:(NSInteger)summonerID withAPIKey:(NSString*)key region:(RGRegion*)region success:(void (^)(CurrentGameInfo *))success failure:(void (^)(NSError *))failure;

@end
