//
//  SummonerService.m
//  RiotAPI
//
//  Created by James Glenn on 6/12/15.
//  Copyright (c) 2015 James Glenn. All rights reserved.
//

#import "SummonerService.h"
#import "Summoner.h"
#import "RunePages.h"
#import "MasteryPages.h"

@implementation SummonerService

- (void)getSummonersForSummonerNames:(NSArray*)summonerNames region:(RGRegion*)region success:(void (^)(NSDictionary *))success failure:(void (^)(NSError *))failure {
    NSString *endpoint = [NSString stringWithFormat:@"by-name/%@", [self commaSeperatedStringForArray:summonerNames]];
    [self fireServiceWithRegion:region endpoint:endpoint params:nil success:^(NSDictionary* response) {
        NSMutableDictionary *summoners = [NSMutableDictionary new];
        for (NSString *key in response) {
            NSDictionary *summonerDict = response[key];
            Summoner *summoner = [Summoner objectWithDictionary:summonerDict];
            [summoners setObject:summoner forKey:key];
        }
        success(summoners);
    } failure:failure];
}

- (void)getSummonersForSummonerIDs:(NSArray*)summonerIDs region:(RGRegion*)region success:(void (^)(NSDictionary *))success failure:(void (^)(NSError *))failure {
    NSString *endpoint = [NSString stringWithFormat:@"%@", [self commaSeperatedStringForArray:summonerIDs]];
    [self fireServiceWithRegion:region endpoint:endpoint params:nil success:^(NSDictionary* response) {
        NSMutableDictionary *summoners = [NSMutableDictionary new];
        for (NSString *key in response) {
            NSDictionary *summonerDict = response[key];
            Summoner *summoner = [Summoner objectWithDictionary:summonerDict];
            [summoners setObject:summoner forKey:key];
        }
        success(summoners);
    } failure:failure];
}

- (void)getSummonerMasteriesForSummonerIDs:(NSArray*)summonerIDs region:(RGRegion*)region success:(void (^)(NSDictionary *))success failure:(void (^)(NSError *))failure {
    NSString *endpoint = [NSString stringWithFormat:@"%@/masteries", [self commaSeperatedStringForArray:summonerIDs]];
    [self fireServiceWithRegion:region endpoint:endpoint params:nil success:^(NSDictionary* response) {
        NSMutableDictionary *masteries = [NSMutableDictionary new];
        for (NSString *key in response) {
            NSDictionary *masteryDict = response[key];
            MasteryPages *pages = [MasteryPages objectWithDictionary:masteryDict];
            [masteries setObject:pages forKey:key];
        }
        success(masteries);
    }  failure:failure];
}

- (void)getSummonerNamesForSummonerIDs:(NSArray*)summonerIDs region:(RGRegion*)region success:(void (^)(NSDictionary *))success failure:(void (^)(NSError *))failure {
    NSString *endpoint = [NSString stringWithFormat:@"%@/name", [self commaSeperatedStringForArray:summonerIDs]];
    [self fireServiceWithRegion:region endpoint:endpoint params:nil success:success failure:failure];
}

- (void)getSummonerRunesForSummonerIDs:(NSArray*)summonerIDs region:(RGRegion*)region success:(void (^)(NSDictionary *))success failure:(void (^)(NSError *))failure {
    NSString *endpoint = [NSString stringWithFormat:@"%@/runes", [self commaSeperatedStringForArray:summonerIDs]];
    [self fireServiceWithRegion:region endpoint:endpoint params:nil success:^(NSDictionary* response) {
        NSMutableDictionary *runes = [NSMutableDictionary new];
        for (NSString *key in response) {
            NSDictionary *runeDict = response[key];
            RunePages *pages = [RunePages objectWithDictionary:runeDict];
            [runes setObject:pages forKey:key];
        }
        success(runes);
    }  failure:failure];
}

- (NSString *)versionURL {
    return @"/api/lol/%@/v1.4/summoner/";
}

- (BOOL)isGlobal {
    return NO;
}

- (NSString *)baseURL {
    return nil;
}

@end
