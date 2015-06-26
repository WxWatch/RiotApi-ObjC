//
//  Incident.m
//  RiotAPI
//
//  Created by James Glenn on 5/12/15.
//  Copyright (c) 2015 James Glenn. All rights reserved.
//

#import "Incident.h"

@implementation Incident

- (void)setUpdates:(NSArray *)updates {
    _updates = [updates arrayOfObjectsWithClass:[Message class]];
}

@end
