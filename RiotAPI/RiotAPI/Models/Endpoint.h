//
//  Endpoint.h
//  RiotAPI
//
//  Created by James Glenn on 5/19/15.
//  Copyright (c) 2015 James Glenn. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSUInteger, EndpointRegion) {
    EndpointRegionGlobal,
    EndpointRegionBR,
    EndpointRegionEUNE,
    EndpointRegionEUW,
    EndpointRegionKR,
    EndpointRegionLAN,
    EndpointRegionLAS,
    EndpointRegionNA,
    EndpointRegionOCE,
    EndpointRegionTR,
    EndpointRegionRU,
    EndpointRegionPBE,
};

@interface Endpoint : NSObject

+ (instancetype)endpointWithRegion:(EndpointRegion)region;

@property (nonatomic, strong) NSString *platformID;
@property (nonatomic, strong) NSString *host;

@end
