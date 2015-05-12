//
//  Roster.h
//  RiotAPI
//
//  Created by James Glenn on 5/11/15.
//  Copyright (c) 2015 James Glenn. All rights reserved.
//

#import "BaseObject.h"

@class TeamMemberInfo;

@interface Roster : BaseObject

@property (nonatomic, strong) NSArray *memberList;
@property (nonatomic, assign) long ownerId;

@end
