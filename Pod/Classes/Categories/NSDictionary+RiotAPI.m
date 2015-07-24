//
//  NSDictionary+Utilities.m
//  RiotAPI
//
//  Created by James Glenn on 5/15/15.
//  Copyright (c) 2015 James Glenn. All rights reserved.
//

#import "NSDictionary+RiotAPI.h"

@implementation NSDictionary (RiotAPI)

- (NSDictionary *)dictionaryOfObjectsWithClass:(Class)objectClass {
    NSMutableDictionary *mutableDict = [NSMutableDictionary new];
    for (NSString *key in self) {
        id dict = self[key];
        
        if ([dict isKindOfClass:objectClass]) {
            [mutableDict setObject:dict forKey:key];
        } else {
            id object = [objectClass new];
            [object setValuesForKeysWithDictionary:dict];
            [mutableDict setObject:object forKey:key];
        }
    }
    
    return [NSDictionary dictionaryWithDictionary:mutableDict];
}


@end
