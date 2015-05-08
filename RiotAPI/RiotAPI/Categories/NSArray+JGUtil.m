//
//  NSArray+JGUtil.m
//  RiotAPI
//
//  Created by James Glenn on 5/1/15.
//  Copyright (c) 2015 James Glenn. All rights reserved.
//

#import "NSArray+JGUtil.h"

@implementation NSArray (JGUtil)

- (NSData*)convertToData {
    NSData *myData = [NSKeyedArchiver archivedDataWithRootObject:self];
    return myData;
}

@end
