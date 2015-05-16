//
//  Service.m
//  RiotAPI
//
//  Created by James Glenn on 5/12/15.
//  Copyright (c) 2015 James Glenn. All rights reserved.
//

#import "Service.h"
#import "NSArray+Utilities.h"

@implementation Service

- (void)setIncidents:(NSArray *)incidents {
    _incidents = [incidents arrayOfObjectsWithClass:[Incident class]];
}

@end
