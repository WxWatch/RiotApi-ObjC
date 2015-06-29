//
//  ChampionService.m
//  RiotAPI
//
//  Created by James Glenn on 6/9/15.
//  Copyright (c) 2015 James Glenn. All rights reserved.
//

#import "ChampionService.h"

@implementation ChampionService

#pragma mark - 
- (void)getChampionsregion:(RGRegion*)region success:(void (^)(MetaChampionList *))success failure:(void (^)(NSError *))failure {
    [self fireServiceWithRegion:region endpoint:@"champion" params:nil success:^(id champions) {
        MetaChampionList *list = [MetaChampionList objectWithDictionary:champions];
        success(list);
    } failure:failure];
}

- (void)getChampionsFreeToPlay:(BOOL)freeToPlay region:(RGRegion*)region success:(void (^)(MetaChampionList *))success failure:(void (^)(NSError *))failure {
    [self fireServiceWithRegion:region endpoint:@"champion" params:@{ @"freeToPlay": [self sanitizeBoolean:freeToPlay] } success:^(id champions) {
        MetaChampionList *list = [MetaChampionList objectWithDictionary:champions];
        success(list);
    } failure:failure];
}

- (void)getChampionByID:(NSInteger)championID region:(RGRegion*)region success:(void (^)(MetaChampion *))success failure:(void (^)(NSError *))failure {
    NSString *endpoint = [NSString stringWithFormat:@"champion/%ld", (long)championID];
    [self fireServiceWithRegion:region endpoint:endpoint params:nil success:^(id champ) {
        MetaChampion *champion = [MetaChampion objectWithDictionary:champ];
        success(champion);
    } failure:failure];
}

#pragma mark - Overrides
- (NSString *)versionURL {
    return @"/api/lol/%@/v1.2/";
}

- (BOOL)isGlobal {
    return NO;
}

- (NSString *)baseURL {
    return nil;
}

@end
