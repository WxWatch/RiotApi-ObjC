//
//  Endpoint.h
//  RiotAPI
//
//  Created by James Glenn on 5/19/15.
//  Copyright (c) 2015 James Glenn. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSUInteger, RiotRegion) {
    RiotRegionGlobal,
    RiotRegionBR,
    RiotRegionEUNE,
    RiotRegionEUW,
    RiotRegionKR,
    RiotRegionLAN,
    RiotRegionLAS,
    RiotRegionNA,
    RiotRegionOCE,
    RiotRegionTR,
    RiotRegionRU,
    RiotRegionPBE,
};

@interface RGRegion : NSObject

+ (instancetype)regionWithRiotRegion:(RiotRegion)region;
+ (NSArray*)allRegionsAlphabetical;

@property (nonatomic, strong) NSString *platformID;
@property (nonatomic, strong) NSString *regionBaseURLString;
@property (nonatomic, strong) NSString *apiParam;

@end
