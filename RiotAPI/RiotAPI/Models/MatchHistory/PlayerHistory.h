//
//  PlayerHistory.h
//  RiotAPI
//
//  Created by James Glenn on 5/12/15.
//  Copyright (c) 2015 James Glenn. All rights reserved.
//

#import "BaseObject.h"

@class MatchSummary;

@interface PlayerHistory : BaseObject

@property (nonatomic, strong) NSArray *matches;

@end
