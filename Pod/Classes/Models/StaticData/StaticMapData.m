//
//  StaticMapData.m
//  RiotAPI
//
//  Created by James Glenn on 5/13/15.
//  Copyright (c) 2015 James Glenn. All rights reserved.
//

#import "StaticMapData.h"

@implementation StaticMapData

- (void)setData:(NSDictionary *)data {
    _data = [data dictionaryOfObjectsWithClass:[StaticMapDetails class]];
}

@end
