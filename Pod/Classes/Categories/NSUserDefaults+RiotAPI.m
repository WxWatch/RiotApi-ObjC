//
//  NSUserDefaults+RiotAPI.m
//  RiotAPI
//
//  Created by James Glenn on 6/26/15.
//  Copyright (c) 2015 James Glenn. All rights reserved.
//

#import "NSUserDefaults+RiotAPI.h"

#define kUsesAlternateURLKey    @"com.wxwatch.riotapi.usesalternateurl"
#define kAlternateURLKey        @"com.wxwatch.riotapi.alternateurl"

@implementation NSUserDefaults (RiotAPI)

+ (BOOL)usesCustomURL {
    return [[NSUserDefaults standardUserDefaults] boolForKey:kUsesAlternateURLKey];
}

+ (void)setUsesCustomURL:(BOOL)usesCustomURL {
    [[NSUserDefaults standardUserDefaults] setBool:usesCustomURL forKey:kUsesAlternateURLKey];
    [[NSUserDefaults standardUserDefaults] synchronize];
}

+ (NSString*)customURLString {
    return [[NSUserDefaults standardUserDefaults] stringForKey:kAlternateURLKey];
}

+ (void)setCustomURLString:(NSString*)customURLString {
    [[NSUserDefaults standardUserDefaults] setObject:customURLString forKey:kAlternateURLKey];
    [[NSUserDefaults standardUserDefaults] synchronize];
}


@end
