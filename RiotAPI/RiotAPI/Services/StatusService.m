//
//  StatusService.m
//  RiotAPI
//
//  Created by James Glenn on 6/12/15.
//  Copyright (c) 2015 James Glenn. All rights reserved.
//

#import "StatusService.h"

@implementation StatusService

- (void)getShardsWithSuccess:(void (^)(NSArray *))success failure:(void (^)(NSError *))failure {
    [self fireServiceWithRegion:nil endpoint:@"shards" params:nil success:success failure:failure];
}

- (void)getShardsForRegion:(RGRegion*)region success:(void (^)(ShardStatus *))success failure:(void (^)(NSError *))failure {
    NSString *endpoint = [NSString stringWithFormat:@"shards/%@", region.apiParam];
    [self fireServiceWithRegion:region endpoint:endpoint params:nil success:^(id response) {
        ShardStatus *status = [ShardStatus objectWithDictionary:response];
        success(status);
    } failure:failure];
}

- (NSString *)versionURL {
    return @"";
}

- (BOOL)isGlobal {
    return NO;
}

- (NSString *)baseURL {
    return @"http://status.leagueoflegends.com/";
}

@end
