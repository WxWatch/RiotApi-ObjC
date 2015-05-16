//
//  Timeline.m
//  RiotAPI
//
//  Created by James Glenn on 5/12/15.
//  Copyright (c) 2015 James Glenn. All rights reserved.
//

#import "Timeline.h"
#import "NSArray+Utilities.h"

@implementation Timeline

- (void)setFrames:(NSArray *)frames {
    _frames = [frames arrayOfObjectsWithClass:[Frame class]];
}

@end
