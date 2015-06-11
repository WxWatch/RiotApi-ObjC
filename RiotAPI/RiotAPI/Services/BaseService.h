//
//  BaseService.h
//  RiotAPI
//
//  Created by James Glenn on 5/15/15.
//  Copyright (c) 2015 James Glenn. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <AFNetworking/AFNetworking.h>
#import "RGRegion.h"

@interface BaseService : NSObject

- (NSString*)versionURL;
- (BOOL)isGlobal;
- (NSString*)baseURL;

- (void)fireServiceWithRegion:(RGRegion *)region endpoint:(NSString*)endpoint params:(NSDictionary *)params success:(void (^)(id))success failure:(void (^)(NSError *))failure;
- (void)fireServiceWithRegion:(RGRegion *)region endpoint:(NSString*)endpoint paramArray:(NSArray *)params success:(void (^)(id))success failure:(void (^)(NSError *))failure;

- (NSString*)sanitizeBoolean:(BOOL)boolean;

@end
