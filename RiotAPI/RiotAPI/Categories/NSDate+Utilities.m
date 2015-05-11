//
//  NSDate+Utilities.m
//  RiotAPI
//
//  Created by James Glenn on 5/11/15.
//  Copyright (c) 2015 James Glenn. All rights reserved.
//

#import "NSDate+Utilities.h"

@implementation NSDate (Utilities)

+ (instancetype)dateWithMillisecondsSince1970:(long)milliseconds {
    long seconds = milliseconds/1000;
    return [NSDate dateWithTimeIntervalSince1970:seconds];
}

@end
