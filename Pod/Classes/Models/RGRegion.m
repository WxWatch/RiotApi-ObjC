//
//  Endpoint.m
//  RiotAPI
//
//  Created by James Glenn on 5/19/15.
//  Copyright (c) 2015 James Glenn. All rights reserved.
//

#import "RGRegion.h"

@interface RGRegion ()
@property (nonatomic, assign) RiotRegion region;
@end


@implementation RGRegion

+ (instancetype)regionWithRiotRegion:(RiotRegion)region {
    RGRegion *endpoint = [RGRegion new];
    endpoint.region = region;
    
    return endpoint;
}

+ (NSArray *)allRegionsAlphabetical {
    return @[ [RGRegion regionWithRiotRegion:RiotRegionBR],
              [RGRegion regionWithRiotRegion:RiotRegionEUNE],
              [RGRegion regionWithRiotRegion:RiotRegionEUW],
              [RGRegion regionWithRiotRegion:RiotRegionKR],
              [RGRegion regionWithRiotRegion:RiotRegionLAN],
              [RGRegion regionWithRiotRegion:RiotRegionLAS],
              [RGRegion regionWithRiotRegion:RiotRegionNA],
              [RGRegion regionWithRiotRegion:RiotRegionOCE],
              [RGRegion regionWithRiotRegion:RiotRegionRU],
              [RGRegion regionWithRiotRegion:RiotRegionTR]
              ];
}

- (NSString *)platformID {
    NSString *ret = nil;
    switch (self.region) {
        case RiotRegionGlobal:
            ret = @"";
            break;
        case RiotRegionBR:
            ret = @"BR1";
            break;
        case RiotRegionEUNE:
            ret = @"EUN1";
            break;
        case RiotRegionEUW:
            ret = @"EUW1";
            break;
        case RiotRegionKR:
            ret = @"KR";
            break;
        case RiotRegionLAN:
            ret = @"LA1";
            break;
        case RiotRegionLAS:
            ret = @"LA2";
            break;
        case RiotRegionNA:
            ret = @"NA1";
            break;
        case RiotRegionOCE:
            ret = @"OC1";
            break;
        case RiotRegionTR:
            ret = @"TR1";
            break;
        case RiotRegionRU:
            ret = @"RU";
            break;
        case RiotRegionPBE:
            ret = @"PBE1";
            break;
        default:
            break;
    }
    return ret;
}

- (NSString *)regionBaseURLString {
    NSString *ret = nil;
    switch (self.region) {
        case RiotRegionGlobal:
            ret = @"https://global.api.pvp.net";
            break;
        case RiotRegionBR:
            ret = @"https://br.api.pvp.net";
            break;
        case RiotRegionEUNE:
            ret = @"https://eune.api.pvp.net";
            break;
        case RiotRegionEUW:
            ret = @"https://euw.api.pvp.net";
            break;
        case RiotRegionKR:
            ret = @"https://kr.api.pvp.net";
            break;
        case RiotRegionLAN:
            ret = @"https://lan.api.pvp.net";
            break;
        case RiotRegionLAS:
            ret = @"https://las.api.pvp.net";
            break;
        case RiotRegionNA:
            ret = @"https://na.api.pvp.net";
            break;
        case RiotRegionOCE:
            ret = @"https://oce.api.pvp.net";
            break;
        case RiotRegionTR:
            ret = @"https://tr.api.pvp.net";
            break;
        case RiotRegionRU:
            ret = @"https://ru.api.pvp.net";
            break;
        case RiotRegionPBE:
            ret = @"https://pbe.api.pvp.net";
            break;
        default:
            break;
    }
    return ret;
}

- (NSString *)apiParam {
    NSString *ret = nil;
    switch (self.region) {
        case RiotRegionGlobal:
            ret = @"";
            break;
        case RiotRegionBR:
            ret = @"br";
            break;
        case RiotRegionEUNE:
            ret = @"eune";
            break;
        case RiotRegionEUW:
            ret = @"euw";
            break;
        case RiotRegionKR:
            ret = @"kr";
            break;
        case RiotRegionLAN:
            ret = @"lan";
            break;
        case RiotRegionLAS:
            ret = @"las";
            break;
        case RiotRegionNA:
            ret = @"na";
            break;
        case RiotRegionOCE:
            ret = @"oce";
            break;
        case RiotRegionTR:
            ret = @"tr";
            break;
        case RiotRegionRU:
            ret = @"ru";
            break;
        case RiotRegionPBE:
            ret = @"pbe";
            break;
        default:
            break;
    }
    return ret;
}

@end
