//
//  RiotAPIManager.m
//  RiotAPI
//
//  Created by James Glenn on 4/29/15.
//  Copyright (c) 2015 James Glenn. All rights reserved.
//

#import "RiotAPIManager.h"

@interface RiotAPIManager ()

@end

@implementation RiotAPIManager

#pragma mark - Public Method

+ (id)sharedInstance
{
    static RiotAPIManager *sharedMyInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedMyInstance = [[self alloc] init];
    });
    
    return sharedMyInstance;
}

#pragma mark - Lifecycle
- (id) init
{
    if (self = [super init]) {
        // Set up properties here
    }
    return self;
}


@end
