//
//  ShardStatus.m
//  RiotAPI
//
//  Created by James Glenn on 5/12/15.
//  Copyright (c) 2015 James Glenn. All rights reserved.
//

#import "ShardStatus.h"
#import "NSArray+Utilities.h"

@implementation ShardStatus

- (void)setServices:(NSArray *)services {
    _services = [services arrayOfObjectsWithClass:[Service class]];
}

@end
