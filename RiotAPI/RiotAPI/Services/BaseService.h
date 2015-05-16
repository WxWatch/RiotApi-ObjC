//
//  BaseService.h
//  RiotAPI
//
//  Created by James Glenn on 5/15/15.
//  Copyright (c) 2015 James Glenn. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <AFNetworking/AFNetworking.h>

@interface BaseService : NSObject

- (void)fireServiceWithCompletion:(void (^)())completion;

@end
