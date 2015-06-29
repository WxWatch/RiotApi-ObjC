//
//  Player.h
//  RiotAPI
//
//  Created by James Glenn on 5/12/15.
//  Copyright (c) 2015 James Glenn. All rights reserved.
//

#import "BaseObject.h"

@interface Player : BaseObject

@property (nonatomic, strong) NSString *matchHistoryUri;
@property (nonatomic, assign) NSInteger profileIcon;
@property (nonatomic, assign) long summonerId;
@property (nonatomic, strong) NSString *summonerName;

@end
