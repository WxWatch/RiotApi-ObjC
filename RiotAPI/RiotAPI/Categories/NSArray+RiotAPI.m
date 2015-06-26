//
//  NSArray+Utilities.m
//  RiotAPI
//
//  Created by James Glenn on 5/15/15.
//  Copyright (c) 2015 James Glenn. All rights reserved.
//

#import "NSArray+RiotAPI.h"

@implementation NSArray (RiotAPI)

- (NSArray *)arrayOfObjectsWithClass:(Class)objectClass {
    NSMutableArray *mutableArray = [NSMutableArray new];
    for (NSDictionary *dict in self) {
        id object = [objectClass new];
        [object setValuesForKeysWithDictionary:dict];
        [mutableArray addObject:object];
    }
    
    return [NSArray arrayWithArray:mutableArray];
}

@end
