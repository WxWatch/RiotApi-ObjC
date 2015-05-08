//
//  NSData+JGUtil.m
//  RiotAPI
//
//  Created by James Glenn on 4/30/15.
//  Copyright (c) 2015 James Glenn. All rights reserved.
//

#import "NSData+JGUtil.h"

@implementation NSData (JGUtil)

- (NSDictionary*)convertToDictionary {
    NSDictionary *myDictionary = (NSDictionary*)[NSKeyedUnarchiver unarchiveObjectWithData:self];
    return myDictionary;
}

- (NSArray *)convertToArray {
    NSArray *myArray = (NSArray*)[NSKeyedUnarchiver unarchiveObjectWithData:self];
    return myArray;
}

@end
