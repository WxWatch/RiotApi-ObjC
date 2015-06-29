//
//  RecentGames.h
//  RiotAPI
//
//  Created by James Glenn on 5/15/15.
//  Copyright (c) 2015 James Glenn. All rights reserved.
//

#import "BaseObject.h"
#import "RecentGame.h"

@interface RecentGames : BaseObject

@property (nonatomic, strong) NSArray *games;
@property (nonatomic, assign) long summonerId;

@end
