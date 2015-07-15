//
//  FeaturedGamesService.m
//  RiotAPI
//
//  Created by James Glenn on 6/10/15.
//  Copyright (c) 2015 James Glenn. All rights reserved.
//

#import "FeaturedGamesService.h"

@implementation FeaturedGamesService

- (void)getFeaturedGamesForRegion:(RGRegion*)region success:(void (^)(FeaturedGames *))success failure:(void (^)(NSError *))failure {
    [self fireServiceWithRegion:region endpoint:@"featured" params:nil success:^(id gamesInfo) {
        FeaturedGames *games = [FeaturedGames objectWithDictionary:gamesInfo];
        success(games);
    } failure:failure];
}

- (NSString *)versionURL {
    return @"/observer-mode/rest/";
}

- (BOOL)isGlobal {
    return NO;
}

- (NSString *)baseURL {
    return nil;
}

@end
