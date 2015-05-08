//
//  NSDictionary+JGUtil.m
//  RiotAPI
//
//  Created by James Glenn on 4/30/15.
//  Copyright (c) 2015 James Glenn. All rights reserved.
//

#import "NSDictionary+JGUtil.h"

@implementation NSDictionary (JGUtil)

- (NSData*)convertToData {
    NSData *myData = [NSKeyedArchiver archivedDataWithRootObject:self];
    return myData;
}

@end
