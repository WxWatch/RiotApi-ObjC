//
//  BaseObject.h
//  RiotAPI
//
//  Created by James Glenn on 5/11/15.
//  Copyright (c) 2015 James Glenn. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSDictionary+RiotAPI.h"
#import "NSArray+RiotAPI.h"
#import "NSDate+RiotAPI.h"

@interface BaseObject : NSObject

+ (instancetype)objectWithDictionary:(NSDictionary*)dictionary;

@end
