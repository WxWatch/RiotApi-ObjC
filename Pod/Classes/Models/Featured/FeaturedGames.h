//
//  FeaturedGames.h
//  RiotAPI
//
//  Created by James Glenn on 5/15/15.
//  Copyright (c) 2015 James Glenn. All rights reserved.
//

#import "BaseObject.h"
#import "FeaturedGameInfo.h"

@interface FeaturedGames : BaseObject

@property (nonatomic, assign) long clientRefreshInterval;
@property (nonatomic, strong) NSArray *gameList;

@end
