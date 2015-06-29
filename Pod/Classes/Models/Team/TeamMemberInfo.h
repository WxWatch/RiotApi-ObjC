//
//  TeamMemberInfo.h
//  RiotAPI
//
//  Created by James Glenn on 5/11/15.
//  Copyright (c) 2015 James Glenn. All rights reserved.
//

#import "BaseObject.h"

@interface TeamMemberInfo : BaseObject

@property (nonatomic, assign) long inviteDate;
@property (nonatomic, assign) long joinDate;
@property (nonatomic, assign) long playerId;
@property (nonatomic, strong) NSString *status;

@end
