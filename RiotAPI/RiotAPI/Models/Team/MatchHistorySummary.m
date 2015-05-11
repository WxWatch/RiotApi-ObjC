//
//  MatchHistorySummary.m
//  RiotAPI
//
//  Created by James Glenn on 5/11/15.
//  Copyright (c) 2015 James Glenn. All rights reserved.
//

#import "MatchHistorySummary.h"
#import "NSDate+Utilities.h"

@implementation MatchHistorySummary

- (NSDate *)dateAsDate {
    return [NSDate dateWithMillisecondsSince1970:self.date];
}

@end
