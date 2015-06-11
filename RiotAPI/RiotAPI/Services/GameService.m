//
//  GameService.m
//  RiotAPI
//
//  Created by James Glenn on 6/10/15.
//  Copyright (c) 2015 James Glenn. All rights reserved.
//

#import "GameService.h"

@implementation GameService

- (void)getRecentGamesForSummonerID:(NSInteger)summonerID withAPIKey:(NSString*)key region:(RGRegion*)region success:(void (^)(RecentGames *))success failure:(void (^)(NSError *))failure {
    NSString *endpoint = [NSString stringWithFormat:@"by-summoner/%ld/recent", (long)summonerID];
    [self fireServiceWithRegion:region endpoint:endpoint params:nil success:^(id games) {
        RecentGames *recent = [RecentGames objectWithDictionary:games];
        success(recent);
    } failure:failure];
}

- (NSString *)versionURL {
    return @"/api/lol/%@/v1.3/game/";
}

- (BOOL)isGlobal {
    return NO;
}

- (NSString *)baseURL {
    return nil;
}

@end
