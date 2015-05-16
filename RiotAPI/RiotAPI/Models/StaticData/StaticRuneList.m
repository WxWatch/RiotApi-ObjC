//
//  StaticRuneList.m
//  RiotAPI
//
//  Created by James Glenn on 5/16/15.
//  Copyright (c) 2015 James Glenn. All rights reserved.
//

#import "StaticRuneList.h"
#import "NSDictionary+Utilities.h"

@implementation StaticRuneList

- (void)setData:(NSDictionary *)data {
    _data = [data dictionaryOfObjectsWithClass:[StaticRune class]];
}

@end
