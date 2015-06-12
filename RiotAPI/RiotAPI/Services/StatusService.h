//
//  StatusService.h
//  RiotAPI
//
//  Created by James Glenn on 6/12/15.
//  Copyright (c) 2015 James Glenn. All rights reserved.
//

#import "BaseService.h"
#import "ShardStatus.h"

@interface StatusService : BaseService

- (void)getShardsWithSuccess:(void (^)(NSArray *))success failure:(void (^)(NSError *))failure;
- (void)getShardsForRegion:(RGRegion*)region success:(void (^)(ShardStatus *))success failure:(void (^)(NSError *))failure;

@end
