//
//  MatchService.m
//  RiotAPI
//
//  Created by James Glenn on 6/12/15.
//  Copyright (c) 2015 James Glenn. All rights reserved.
//

#import "MatchService.h"

@implementation MatchService

- (void)getMatchForMatchID:(long)matchID includeTimeline:(BOOL)includeTimeine withAPIKey:(NSString *)key region:(RGRegion *)region success:(void (^)(MatchDetail *))success failure:(void (^)(NSError *))failure {
    NSString *endpoint = [NSString stringWithFormat:@"match/%ld", matchID];
    
    NSDictionary *params = @{ @"includeTimeline": [self sanitizeBoolean:includeTimeine] };
    
    [self fireServiceWithRegion:region endpoint:endpoint params:params success:^(id response) {
        MatchDetail *detail = [MatchDetail objectWithDictionary:response];
        success(detail);
    } failure:failure];
}

- (NSString *)versionURL {
    return @"/api/lol/%@/v2.2/";
}

- (BOOL)isGlobal {
    return NO;
}

- (NSString *)baseURL {
    return nil;
}

@end
