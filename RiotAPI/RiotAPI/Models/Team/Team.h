//
//  Team.h
//  RiotAPI
//
//  Created by James Glenn on 5/11/15.
//  Copyright (c) 2015 James Glenn. All rights reserved.
//

#import "BaseObject.h"

@class Roster;

@interface Team : BaseObject

@property (nonatomic, assign) long createDate;
@property (nonatomic, strong) NSString *fullId;
@property (nonatomic, assign) long lastGameDate;
@property (nonatomic, assign) long lastJoinDate;
@property (nonatomic, assign) long lastJoinedRankedTeamQueueDate;
@property (nonatomic, strong) NSArray *matchHistory;
@property (nonatomic, assign) long modifyDate;
@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) Roster *roster;
@property (nonatomic, assign) long secondLastJoinDate;
@property (nonatomic, strong) NSString *status;
@property (nonatomic, strong) NSString *tag;
@property (nonatomic, strong) NSArray *teamStatDetails;
@property (nonatomic, assign) long thirdLastJoinDate;

// Date getters
- (NSDate*)lastGameDateAsDate;
- (NSDate*)lastJoinDateAsDate;
- (NSDate*)lastJoinedRankedTeamQueueDateAsDate;
- (NSDate*)modifyDateAsDate;
- (NSDate*)secondLastJoinDateAsDate;
- (NSDate*)thirdLastJoinDateAsDate;

@end
