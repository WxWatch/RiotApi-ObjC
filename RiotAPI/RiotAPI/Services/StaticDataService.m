//
//  StaticDataService.m
//  RiotAPI
//
//  Created by James Glenn on 6/11/15.
//  Copyright (c) 2015 James Glenn. All rights reserved.
//

#import "StaticDataService.h"

@implementation StaticDataService

- (NSString *)versionURL {
    return @"/api/lol/static-data/%@/v1.2/";
}

- (BOOL)isGlobal {
    return YES;
}

- (NSString *)baseURL {
    return nil;
}

@end
