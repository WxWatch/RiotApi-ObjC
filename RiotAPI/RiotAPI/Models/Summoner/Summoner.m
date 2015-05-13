//
//  Summoner.m
//  RiotAPI
//
//  Created by James Glenn on 5/12/15.
//  Copyright (c) 2015 James Glenn. All rights reserved.
//

#import "Summoner.h"
#import "NSDate+Utilities.h"

@implementation Summoner

- (NSDate *)revisionDateAsDate {
    return [NSDate dateWithMillisecondsSince1970:self.revisionDate];
}

@end
