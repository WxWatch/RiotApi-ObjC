//
//  NSDictionary+Utilities.m
//  RiotAPI
//
//  Created by James Glenn on 5/15/15.
//  Copyright (c) 2015 James Glenn. All rights reserved.
//

#import "NSDictionary+Utilities.h"

@implementation NSDictionary (Utilities)

- (NSDictionary *)dictionaryOfObjectsWithClass:(Class)objectClass {
    NSMutableDictionary *mutableDict = [NSMutableDictionary new];
    for (NSString *key in self) {
        NSDictionary *dict = self[key];
        id object = [objectClass new];
        [object setValuesForKeysWithDictionary:dict];
        [mutableDict setObject:object forKey:key];
    }
    
    return [NSDictionary dictionaryWithDictionary:mutableDict];
}


@end
