//
//  RecentGamePlayer.h
//  RiotAPI
//
//  Created by James Glenn on 5/15/15.
//  Copyright (c) 2015 James Glenn. All rights reserved.
//

#import "BaseObject.h"

@interface RecentGamePlayer : BaseObject

@property (nonatomic, assign) NSInteger championId;
@property (nonatomic, assign) long summonerId;
@property (nonatomic, assign) NSInteger teamId;

@end
