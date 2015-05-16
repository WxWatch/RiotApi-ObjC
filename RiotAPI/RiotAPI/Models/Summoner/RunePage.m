//
//  RunePage.m
//  RiotAPI
//
//  Created by James Glenn on 5/13/15.
//  Copyright (c) 2015 James Glenn. All rights reserved.
//

#import "RunePage.h"
#import "NSArray+Utilities.h"

@implementation RunePage

- (void)setSlots:(NSArray *)slots {
    _slots = [slots arrayOfObjectsWithClass:[RuneSlot class]];
}

@end
