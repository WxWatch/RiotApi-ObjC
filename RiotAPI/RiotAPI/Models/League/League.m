//
//  League.m
//  RiotAPI
//
//  Created by James Glenn on 5/11/15.
//  Copyright (c) 2015 James Glenn. All rights reserved.
//

#import "League.h"

@implementation League

- (void)setEntries:(NSArray *)entries {
    _entries = [entries arrayOfObjectsWithClass:[LeagueEntry class]];
}

@end
