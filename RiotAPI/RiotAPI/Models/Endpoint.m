//
//  Endpoint.m
//  RiotAPI
//
//  Created by James Glenn on 5/19/15.
//  Copyright (c) 2015 James Glenn. All rights reserved.
//

#import "Endpoint.h"

@interface Endpoint ()
@property (nonatomic, assign) EndpointRegion region;
@end


@implementation Endpoint

+ (instancetype)endpointWithRegion:(EndpointRegion)region {
    Endpoint *endpoint = [Endpoint new];
    endpoint.region = region;
    
    return endpoint;
}

- (NSString *)platformID {
    NSString *ret = nil;
    switch (self.region) {
        case EndpointRegionGlobal:
            ret = @"";
            break;
        case EndpointRegionBR:
            ret = @"BR1";
            break;
        case EndpointRegionEUNE:
            ret = @"EUN1";
            break;
        case EndpointRegionEUW:
            ret = @"EUW1";
            break;
        case EndpointRegionKR:
            ret = @"KR";
            break;
        case EndpointRegionLAN:
            ret = @"LA1";
            break;
        case EndpointRegionLAS:
            ret = @"LA2";
            break;
        case EndpointRegionNA:
            ret = @"NA1";
            break;
        case EndpointRegionOCE:
            ret = @"OC1";
            break;
        case EndpointRegionTR:
            ret = @"TR1";
            break;
        case EndpointRegionRU:
            ret = @"RU";
            break;
        case EndpointRegionPBE:
            ret = @"PBE1";
            break;
        default:
            break;
    }
    return ret;
}

- (NSString *)host {
    NSString *ret = nil;
    switch (self.region) {
        case EndpointRegionGlobal:
            ret = @"global.api.pvp.net";
            break;
        case EndpointRegionBR:
            ret = @"br.api.pvp.net";
            break;
        case EndpointRegionEUNE:
            ret = @"eune.api.pvp.net";
            break;
        case EndpointRegionEUW:
            ret = @"euw.api.pvp.net";
            break;
        case EndpointRegionKR:
            ret = @"kr.api.pvp.net";
            break;
        case EndpointRegionLAN:
            ret = @"lan.api.pvp.net";
            break;
        case EndpointRegionLAS:
            ret = @"las.api.pvp.net";
            break;
        case EndpointRegionNA:
            ret = @"na.api.pvp.net";
            break;
        case EndpointRegionOCE:
            ret = @"oce.api.pvp.net";
            break;
        case EndpointRegionTR:
            ret = @"tr.api.pvp.net";
            break;
        case EndpointRegionRU:
            ret = @"ru.api.pvp.net";
            break;
        case EndpointRegionPBE:
            ret = @"pbe.api.pvp.net";
            break;
        default:
            break;
    }
    return ret;
}

@end
