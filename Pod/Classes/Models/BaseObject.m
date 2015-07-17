//
//  BaseObject.m
//  RiotAPI
//
//  Created by James Glenn on 5/11/15.
//  Copyright (c) 2015 James Glenn. All rights reserved.
//

#import "BaseObject.h"
#import "NSObject+Properties.h"

@implementation BaseObject

+ (instancetype)objectWithDictionary:(NSDictionary *)dictionary {
    id object = [self new];
    [object setValuesForKeysWithDictionary:dictionary];
    
    return object;
}

- (void)setValuesForKeysWithDictionary:(NSDictionary *)keyedValues {
    if ([keyedValues objectForKey:@"description"]) {
        NSMutableDictionary *dict = [keyedValues mutableCopy];
        [dict setObject:keyedValues[@"description"] forKey:@"aDescription"];
        [dict removeObjectForKey:@"description"];
        [super setValuesForKeysWithDictionary:dict];
    } else {
        [super setValuesForKeysWithDictionary:keyedValues];
    }

}

- (id)valueForUndefinedKey:(NSString *)key {
    return @"";
}

- (void)setValue:(id)value forUndefinedKey:(NSString *)key {

}

- (void)setValue:(id)value forKey:(NSString *)key {
    // Check if Property is a Dictionary when it should be an Object
    if ([value isKindOfClass:[NSDictionary class]] && ![@([self typeOfPropertyNamed:key]) isEqualToString:@"T@\"NSDictionary\""]) {
        NSString *className = [@([self typeOfPropertyNamed:key]) componentsSeparatedByString:@"\""][1];
        Class objClass = NSClassFromString(className);
        value = [objClass objectWithDictionary:value];
    }
    
    [super setValue:value forKey:key];
}

@end
