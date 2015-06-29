//
//  PlayerHistory.m
//  RiotAPI
//
//  Created by James Glenn on 5/12/15.
//  Copyright (c) 2015 James Glenn. All rights reserved.
//

#import "PlayerHistory.h"

@implementation PlayerHistory

- (void)setMatches:(NSArray *)matches {
    _matches = [matches arrayOfObjectsWithClass:[MatchSummary class]];
}

@end
