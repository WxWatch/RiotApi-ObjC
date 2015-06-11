//
//  CurrentGameService.m
//  RiotAPI
//
//  Created by James Glenn on 6/10/15.
//  Copyright (c) 2015 James Glenn. All rights reserved.
//

#import "CurrentGameService.h"

@implementation CurrentGameService

- (void)getCurrentGameForSummonerID:(NSInteger)summonerID withAPIKey:(NSString*)key region:(RGRegion*)region success:(void (^)(CurrentGameInfo *))success failure:(void (^)(NSError *))failure {
    NSString *endpoint = [NSString stringWithFormat:@"%@/%ld", region.platformID, (long)summonerID];
    [self fireServiceWithRegion:region endpoint:endpoint params:nil success:^(id currentGame) {
        CurrentGameInfo *info = [CurrentGameInfo objectWithDictionary:currentGame];
        success(info);
    } failure:failure];
}

- (NSString *)versionURL {
    return @"/observer-mode/rest/consumer/getSpectatorGameInfo/";
}

- (BOOL)isGlobal {
    return NO;
}

- (NSString *)baseURL {
    return nil;
}

@end
