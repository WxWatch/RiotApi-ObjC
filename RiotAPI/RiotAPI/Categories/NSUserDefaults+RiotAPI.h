//
//  NSUserDefaults+RiotAPI.h
//  RiotAPI
//
//  Created by James Glenn on 6/26/15.
//  Copyright (c) 2015 James Glenn. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSUserDefaults (RiotAPI)

+ (BOOL)usesCustomURL;
+ (void)setUsesCustomURL:(BOOL)usesCustomURL;

+ (NSString*)customURLString;
+ (void)setCustomURLString:(NSString*)customURLString;

@end
