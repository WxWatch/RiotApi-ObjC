//
//  MatchDetail.m
//  RiotAPI
//
//  Created by James Glenn on 5/12/15.
//  Copyright (c) 2015 James Glenn. All rights reserved.
//

#import "MatchDetail.h"
#import "NSDate+Utilities.h"

@implementation MatchDetail

- (NSDate *)matchCreationAsDate {
    return [NSDate dateWithMillisecondsSince1970:self.matchCreation];
}

@end
