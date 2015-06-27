//
//  MatchService.h
//  RiotAPI
//
//  Created by James Glenn on 6/12/15.
//  Copyright (c) 2015 James Glenn. All rights reserved.
//

#import "BaseService.h"
#import "MatchDetail.h"

@interface MatchService : BaseService

- (void)getMatchForMatchID:(long)matchID includeTimeline:(BOOL)includeTimeine region:(RGRegion *)region success:(void (^)(MatchDetail *))success failure:(void (^)(NSError *))failure;

@end
