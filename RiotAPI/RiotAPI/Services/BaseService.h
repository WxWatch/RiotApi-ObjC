//
//  BaseService.h
//  RiotAPI
//
//  Created by James Glenn on 5/15/15.
//  Copyright (c) 2015 James Glenn. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <AFNetworking/AFNetworking.h>
#import "Endpoint.h"

@interface BaseService : NSObject

- (void)fireServiceWithEndpoint:(Endpoint*)endpoint success:(void (^)())success failure:(void (^)(NSError *error))error;
- (void)fireServiceWithCompletion:(void (^)())completion;

@end
