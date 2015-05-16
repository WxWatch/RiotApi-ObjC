//
//  League.h
//  RiotAPI
//
//  Created by James Glenn on 5/11/15.
//  Copyright (c) 2015 James Glenn. All rights reserved.
//

#import "BaseObject.h"
#import "LeagueEntry.h"

@interface League : BaseObject

@property (nonatomic, strong) NSArray *entries;
@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *participantId;
@property (nonatomic, strong) NSString *queue;
@property (nonatomic, strong) NSString *tier;

@end
